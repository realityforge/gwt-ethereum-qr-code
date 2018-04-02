require 'buildr/git_auto_version'
require 'buildr/gpg'
require 'buildr/gwt'

desc 'GWT QR Code Generation'
define 'gwt-ethereum-qr-code' do
  project.group = 'org.realityforge.gwt.ethereum_qr_code'
  compile.options.source = '1.8'
  compile.options.target = '1.8'
  compile.options.lint = 'all'

  project.version = ENV['PRODUCT_VERSION'] if ENV['PRODUCT_VERSION']

  pom.add_mit_license
  pom.add_github_project('realityforge/gwt-ethereum-qr-code')
  pom.add_developer('realityforge', 'Peter Donald')
  pom.provided_dependencies.concat [:javax_jsr305]
  pom.include_transitive_dependencies << artifact(:gwt_qr_code)
  pom.dependency_filter = Proc.new {|dep| dep[:group].to_s == 'org.realityforge.braincheck' || dep[:group].to_s == 'com.google.code.findbugs' || dep[:group].to_s == 'org.realityforge.gwt.qr_code'}

  compile.with :javax_jsr305,
               :jsinterop_base,
               :jsinterop_base_sources,
               :jsinterop_annotations,
               :jsinterop_annotations_sources,
               :elemental2_core,
               :elemental2_dom,
               :elemental2_promise,
               :braincheck,
               :gwt_qr_code

  gwt_enhance(project)

  test.using :testng

  package(:jar)
  package(:sources)
  package(:javadoc)

  doc.
    using(:javadoc,
          :windowtitle => 'GWT Ethereum QR Code API Documentation',
          :linksource => true,
          :timestamp => false,
          :link => %w(https://docs.oracle.com/javase/8/docs/api http://www.gwtproject.org/javadoc/latest/)
    )

  iml.excluded_directories << project._('tmp')

  ipr.add_component_from_artifact(:idea_codestyle)
end
