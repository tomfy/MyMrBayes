srcdir    = .
RM        = rm
CC        = gcc
#CFLAGS    = -O3 -DNDEBUG -DUSECONFIG_H
#CFLAGS     = -DUSECONFIG_H -std=c99
CFLAGS	= -O3 -DNDEBUG -DUSECONFIG_H -std=c99  -I/usr/include
# -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -L/usr/lib/x86_64-linux-gnu
LDFLAGS   =  -lreadline -lm 
# -lglib-2.0
INSTALL   = /usr/bin/install -c
BINDIR    = /usr/local/bin

SRC       = bayes.c command.c mcmc.c model.c proposal.c sumpt.c utils.c mbbeagle.c best.c
OBJECTS   = bayes.o command.o mcmc.o model.o proposal.o sumpt.o utils.o mbbeagle.o best.o
PROGS     = mb

all: $(PROGS)

mb: $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

install: $(PROGS)
	$(INSTALL) -m 755 $(PROGS) $(BINDIR)

clean:
	$(RM) -f *.o *~ mb

distclean: clean
	$(RM) -rf Makefile config.log config.status config.h *.cache

showdep:
	@$(CC) -MM $(SRC)

bayes.o: bayes.c bayes.h command.h model.h sumpt.h utils.h
command.o: command.c bayes.h command.h mbbeagle.h model.h mcmc.h sumpt.h utils.h
mcmc.o: mcmc.c bayes.h best.h command.h mbbeagle.h mcmc.h model.h sumpt.h utils.h
model.o: model.c bayes.h best.h command.h model.h mcmc.h sumpt.h utils.h
proposal.o: proposal.c bayes.h best.h command.h mcmc.h model.h utils.h
sumpt.o: sumpt.c bayes.h command.h mcmc.h sumpt.h utils.h
utils.o: utils.c bayes.h best.h command.h mcmc.h model.h utils.h
mbbeagle.o: mbbeagle.c bayes.h mbbeagle.h utils.h
best.o: best.c bayes.h best.h command.h mcmc.h model.h utils.h
