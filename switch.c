#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdbool.h>
#include <stdint.h>
#include <inttypes.h>
#include <string.h>

enum { strcmp_EqualTo = 0, stricmp_EqualTo = 0 };

typedef struct _case_tag *case_t;

struct _case_tag {
  // Public portion
    case_t   (*Case    )( case_t C, const char * trial, intmax_t value );
    case_t   (*iCase   )( case_t C, const char * trial, intmax_t value );
    case_t   (*Default )( case_t C, intmax_t value );
    case_t   (*FoundYet)( case_t C, bool * result );
    intmax_t (*End     )( case_t C );
    
    const char ** ErrorMsg;

  // Private portion
    bool     _match_found;
    intmax_t _match_value;
    
    bool     _default_given;
    intmax_t _default_value;
    
    const char * _input;
};

static case_t _Case ( case_t C, const char * trial, intmax_t value )
{
    if (    !C->_match_found
         && C->ErrorMsg == NULL
         && strcmp( C->_input, trial ) == strcmp_EqualTo )
    {
        C->_match_found = true;
        C->_match_value = value;
    };
    return C;
};

static case_t _iCase ( case_t C, const char * trial, intmax_t value )
{
    if (    !C->_match_found
         && C->ErrorMsg == NULL
         && _stricmp( C->_input, trial ) == stricmp_EqualTo )
    {
        C->_match_found = true;
        C->_match_value = value;
    };
    return C;
};

static case_t _Default ( case_t C, intmax_t value )
{
    if ( C->ErrorMsg == NULL )
    {
        if ( C->_default_given )
        {
            *(C->ErrorMsg) = "Default value given multiple times";
        }
        else
        {
            C->_default_given = true;
            C->_default_value = value;
        };
    };
    return C;
};

static case_t _FoundYet ( case_t C, bool * result )
{
    if (    C->ErrorMsg == NULL
         && C->_match_found     )
    {
        *result = true;
    }
    else
    {
        *result = false;
    };
    return C;
};

static intmax_t _End ( case_t C )
{
    intmax_t retval = 0;
    
    if ( C->ErrorMsg == NULL )
    {
        if ( C->_match_found )
        {
            retval = C->_match_value;
        }
        else if ( C->_default_given )
        {
            retval = C->_default_value;
        };
    };
    
    free( C );
    return retval;
};

case_t SwitchString ( case_t* pC, const char * input )
{
    /*
    static const case_t template_C = &( struct _case_tag ){
        .Case     = _Case,
        .iCase    = _iCase,
        .Default  = _Default,
        .FoundYet = _FoundYet,
        .End      = _End,
        
        .ErrorMsg = NULL,
        
        ._match_found   = false,
        ._match_value   = 0,
        
        ._default_given = false,
        ._default_value  = 0,
        
        ._input = NULL
    };
    */
    
    static const struct _case_tag template_C = {
        .Case     = _Case,
        .iCase    = _iCase,
        .Default  = _Default,
        .FoundYet = _FoundYet,
        .End      = _End,
        
        .ErrorMsg = NULL,
        
        ._match_found   = false,
        ._match_value   = 0,
        
        ._default_given = false,
        ._default_value  = 0,
        
        ._input = NULL
    };
    
    case_t C = malloc( sizeof( struct _case_tag ) );
    *pC = C;
    
    if ( C )
    {
        //memcpy( C, template_C, sizeof( struct _case_tag ) );
        memcpy( C, &template_C, sizeof( struct _case_tag ) );
        C->_input = input;
    };
    
    return C;
};

int main ( int argc, char * argv[] )
{
    if ( argc != 2 )
    {
        puts( "Please enter exactly one name" );
        return EXIT_FAILURE;
    }
    else
    {
        case_t C = NULL;
        bool not_default = false;
        intmax_t result = SwitchString( &C, argv[ 1 ] )
            -> Case( C, "Alice",   0x05 )
            -> Case( C, "Bob",     0x10 )
            -> Case( C, "Charlie", 0x15 )
            -> Case( C, "Eve",     0x50 )
            -> FoundYet( C, &not_default )
            -> Default( C,         0x99 )
        ->End( C );
        uintmax_t uresult = (uintmax_t)imaxabs( result );
        
        puts( "We have Alice (0x05), Bob (0x10), Charlie (0x15), and Eve (0x50).\nEveryone else is 0x99." );
        if ( not_default )
        {
            printf( "You entered the name of someone we have, the value is: 0x%" PRIXMAX ".\n", uresult );
        }
        else
        {
            printf( "You entered the name of someone we don't have (%s), the value is: 0x%" PRIXMAX ".\n", argv[1], uresult );
        };
        
        return EXIT_SUCCESS;
    };
};
