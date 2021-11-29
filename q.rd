<resource schema="bros">
<meta name="title">BROS catalog</meta>
  <meta name="creationDate">2020-05-31T17:02:03</meta>
  <meta name="description">
     Blazar Radio and Optical Survey
  </meta>
  <meta name="creator.name">Bonato et al.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">BROS sources</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">radio</meta>
   </meta>

   <meta name="source">
    Itoh et al., in prep.
   </meta>

   <table id="main" onDisk="True" mixin="//scs#q3cindex" primary="BROS_ID">
    <index columns="RA,Dec"/>

   <column name="BROS_ID" type="text"
     ucd="meta.id;meta.main"
     tablehead="BROS" verbLevel="1"
     description="BROS name ID"
     required="True"/>

    <column name="RA" type="real"
      unit="deg" ucd="pos.eq.ra;meta.main"
      tablehead="RA" verbLevel="1"
      description="Right Ascension"
      required="True"/>

    <column name="Dec" type="real"
      unit="deg" ucd="pos.eq.dec;meta.main"
      tablehead="Dec" verbLevel="1"
      description="Declination"
      required="True"/>

   <column name="TGSS_Flux" type="real"
     unit="Jansky" ucd="phot.flux.density;em.radio.100-200MHz"
     tablehead="TGSS-Flux" verbLevel="1"
     description="TGSS-Flux"
     required="True"/>

   <column name="TGSS_Flux_error" type="real"
     unit="Jansky" ucd="stat.error;phot.flux.density;em.radio.100-200MHz"
     tablehead="TGSS-Flux-error" verbLevel="1"
     description="TGSS-Flux-error"
     required="True"/>
     
   <column name="NVSS_Flux" type="real"
       unit="Jansky" ucd="phot.flux.density;em.radio.750-1500MHz"
       tablehead="NVSS-Flux" verbLevel="1"
       description="NVSS-Flux"
       required="True"/>

   <column name="NVSS_Flux_error" type="real"
       unit="Jansky" ucd="stat.error;phot.flux.density;em.radio.750-1500MHz"
       tablehead="NVSS-Flux-error" verbLevel="1"
       description="NVSS-Flux-error"
       required="True"/>

   <column name="Spectral_Index" type="real"
     ucd="spect.index"
     tablehead="Spectral-Index" verbLevel="1"
     description="Spectral index between 0.15 GHz and 1.4 GHz"
     required="False"/>

   <column name="Spectral_Index_error" type="real"
     ucd="stat.error;spect.index"
     tablehead="Gamma-ray slope error" verbLevel="1"
     description="Spectral index error"
     required="False"/>

   <column name="SourceFlag" type="text"
     ucd="meta.code.qual "
     tablehead="SourceFlag" verbLevel="1"
     description="Source type flag, Q, E, G or B"
     required="True"/>

  </table>

  <data id="import">
    <sources>bros_v2.fits</sources>

    <fitsTableGrammar/>

    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">BROS catalog</meta>
    <meta name="shortName">BROS cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

<!--
    <publish render="scs.xml" sets="local"/>
-->
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
