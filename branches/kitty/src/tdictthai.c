#include <string.h>
#include <glib.h>

#include "dictionary.h"

int
main (int argc, char *argv[]) 
{
	if (argc == 2) 
	{
		if (dictionary_open ())
		{
			exit (1);
		} else {
			const char *meaning = dictionary_search (argv[1]);
			if (meaning == NULL)
			{
				printf ("%s not found.\n", argv[1]);
			} else {
				printf ("%s:\n", argv[1]);
				printf ("%s\n", meaning);
			}
			dictionary_close ();
			return 0;
		}
	} else {
		printf ("Usage: tdictthai keyword\n");
		exit(1);
	}
}
