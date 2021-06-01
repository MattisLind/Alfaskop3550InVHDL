
ttldirs := $(wildcard TTL*)
cleandirs := $(foreach dir, $(ttldirs), clean$(dir))

all: $(ttldirs)

$(ttldirs):
	@echo $@
	$(MAKE) -C $@

clean: $(cleandirs)

$(cleandirs):
	@echo $@
	$(MAKE) clean -C $(subst clean,,$@)

.PHONY: all $(ttldirs) clean $(cleandirs)


