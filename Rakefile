=begin "Rakefile" v0.4.1 | 2021/09/16 | by Tristano Ajmone
================================================================================
This is an initial Rakefile proposal for Alan-i18n.  It's fully working and uses
namespaces to separate tasks according to locale, but it could do with some
further improvements.

* Clobbering is global, I haven't found a way to implement namespace clobbering,
  so if you 'Rake clobber' you'll have to 'Rake' in order not to loose tracked
  files. Namespaced clobbering would improve working on specific locales.
* Beware that CDing to a directory is a persistent action affecting all future
  'sh' commands -- always remember to 'cd $repo_root' before issuing shell
  commands from Rake, or manipulating task paths (working dir is affected!).
* We should create an ALAN class exposing the compiler and interpreter via
  custom methods, as well as allowing to gain info about the SDK version, and
  allowing to enforce a specific SDK from a repo folder (ignored by Git), and
  ideally also download the required SDK (according to OS) and unpack it in
  the repository ignored folders.
================================================================================
=end


# Custom helpers shared among ALAN repos ...

require './_assets/rake/globals.rb'
require './_assets/rake/alan.rb'
require './_assets/rake/asciidoc.rb'


## Tasks
########

task :default => %w[lib:all]


## Clean & Clobber
##################
require 'rake/clean'
CLOBBER.include('**/*.a3c')
CLOBBER.include('**/*.a3t')
CLOBBER.include('**/*.html').exclude('**/docinfo.html')


namespace "lib" do

  desc "Build all libraries"
  task all: %w[lib:en:all lib:es:all]

  ## ENGLISH LIBRARY
  ##################
  namespace "en" do

    desc "English library"
    task :all => [:cloak, :tests, :docs]

    LIB_EN_SOURCES = FileList['alan_en/Foundation/*.i']

    ## Cloak of Darkness
    ####################
    desc "Cloak of Darkness"
    task :cloak
    CreateTranscriptingTasksFromFolder(:cloak,'alan_en/cloak', LIB_EN_SOURCES)

    ## Test Suite
    #############
    desc "English test suite"
    task :tests
    CreateTranscriptingTasksFromFolder(:tests,'alan_en/tests', LIB_EN_SOURCES)

    ## Documentation
    ################
    desc "English documentation"
    task :docs
    ADOC_DEPS = FileList['alan_en/docs/*.adoc']
    CreateAsciiDocHTMLTasksFromFolder(:docs,'alan_en/docs', ADOC_DEPS)
  end # lib:en:

  ## SPANISH LIBRARY
  ##################
  namespace "es" do

    desc "Spanish library"
    task :all => [:vampiro, :tests]

    LIB_ES_SOURCES = FileList['alan_es/Foundation/*.i']

    ## Vampiro
    ##########
    desc "Vampiro"
    task :vampiro
    CreateTranscriptingTasksFromFolder(:vampiro,'alan_es/vampiro', LIB_ES_SOURCES)

    ## Test Suite
    #############
    desc "Spanish test suite"
    task :tests
    CreateTranscriptingTasksFromFolder(:tests,'alan_es/tests', LIB_ES_SOURCES)

  end # lib:es:
end   # lib:
