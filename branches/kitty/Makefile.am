## Process this file with automake to produce Makefile.in

SUBDIRS = src po

EXTRA_DIST = \
	autogen.sh \
	gdictthai.glade \
	gdictthai.gladep

install-data-local:
	@$(NORMAL_INSTALL)
	if test -d $(srcdir)/pixmaps; then \
	  $(mkinstalldirs) $(DESTDIR)$(pkgdatadir)/pixmaps; \
	  for pixmap in $(srcdir)/pixmaps/*; do \
	    if test -f $$pixmap; then \
	      $(INSTALL_DATA) $$pixmap $(DESTDIR)$(pkgdatadir)/pixmaps; \
	    fi \
	  done \
	fi
	if test -d $(srcdir)/dictionary; then \
	  $(mkinstalldirs) $(DESTDIR)$(pkgdatadir)/dictionary; \
	  for dictionary in $(srcdir)/dictionary/*; do \
	    if test -f $$dictionary; then \
	      $(INSTALL_DATA) $$dictionary $(DESTDIR)$(pkgdatadir)/dictionary; \
	    fi \
	  done \
	fi

dist-hook:
	if test -d pixmaps; then \
	  mkdir $(distdir)/pixmaps; \
	  for pixmap in pixmaps/*; do \
	    if test -f $$pixmap; then \
	      cp -p $$pixmap $(distdir)/pixmaps; \
	    fi \
	  done \
	fi
	if test -d dictionary; then \
	  mkdir $(distdir)/dictionary; \
	  for dictionary in dictionary/*; do \
	    if test -f $$dictionary; then \
	      cp -p $$dictionary $(distdir)/dictionary; \
	    fi \
	  done \
	fi


