MO_PATH=../locale/
LOCALIZABLE=../mojowka
TEMPLATE=mojowka.pot

.PHONY: compile update clean help
compile:
	@for i in $$(ls *.po); do \
	    mkdir -p $(MO_PATH)$${i%.po}/LC_MESSAGES ; \
	    msgfmt $$i -o $(MO_PATH)$${i%.po}/LC_MESSAGES/mojowka.mo; \
	    echo "$$i -> $(MO_PATH)$${i%.po}/LC_MESSAGES/mojowka.mo"; \
	done
up update: $(LOCALIZABLE)
	@echo Gathering translations...
	@xgettext -L Perl \
	    -k__ -k\$__ -k%__ -k__n:1,2 -k__nx:1,2 -k__np:2,3 -k__npx:2,3 -k__p:2 \
	    -k__px:2 -k__x -k__xn:1,2 -kN__ -kN__n -kN__np -kN__p -k \
	    --from-code utf-8 -o $(TEMPLATE) $(LOCALIZABLE)
	@echo Merging...
	@for i in $$(ls *.po); do \
	    cp $$i $$i~; \
	    echo -n "$$i "; \
	    msgmerge $$i~ $(TEMPLATE) > $$i; \
	done
	@echo
clean:
	@rm -f *~
help:
	@echo 'Available goals: compile, update, clean, help.'
