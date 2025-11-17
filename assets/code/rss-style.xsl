<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" doctype-system="about:legacy-compat" indent="yes" />

	<xsl:template match="channel">

		<html lang="en">
		<head>
			<meta charset="utf-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1" />
			<link rel="shortcut icon" type="image/ico" href="https://crushing.neocities.org/assets/favicon.ico" />
      <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Montserrat:400,700|Rowdies:300" />
			<link rel="stylesheet" type="text/css" href="style.css" />
		</head>

    <header>
        <nav>
            <button title="Index" aria-label="Index" type="button" class="small-button" onclick="location.href='https://crushing.neocities.org/hub'">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 512 512"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32" d="M80 212v236a16 16 0 0 0 16 16h96V328a24 24 0 0 1 24-24h80a24 24 0 0 1 24 24v136h96a16 16 0 0 0 16-16V212"/><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="32" d="M480 256L266.89 52c-5-5.28-16.69-5.34-21.78 0L32 256m368-77V64h-48v69"/></svg>
            </button>
            <button title="Commissions" aria-label="Commissions" type="button" class="small-button" onclick="location.href='https://crushing.neocities.org/hub#commissions'">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M18.417 8.148C18.417 5.858 15.544 4 12 4S5.583 5.857 5.583 8.148s1.75 3.556 6.417 3.556s7 1.185 7 4.148S15.866 20 12 20s-7-1.857-7-4.148M12 2v20" color="currentColor"/></svg>
            </button>
            <button title="Microblog" aria-label="Microblog" type="button" class="small-button" onclick="location.href='https://crushing.neocities.org/microblog.xml'">
                <svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 24 24"><g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"><path d="M4 10.419c6.068-.32 9.9 3.513 9.582 9.581"/><circle cx="5" cy="19" r="1"/><path d="M4 4.03C14.114 3.5 20.501 9.887 19.97 20"/></g></svg>
            </button>
            <button title="Back" aria-label="Back" type="button" class="small-button" onclick="location.href='javascript:history.back()'">
                <svg xmlns="http://www.w3.org/2000/svg" width="1.1em" height="1.1em" viewBox="0 0 512 512"><path fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="32" d="M240 424v-96c116.4 0 159.39 33.76 208 96c0-119.23-39.57-240-208-240V88L64 256Z"/></svg>
            </button>
        </nav>
    </header>

		<body>

      <section id="index">

        <div class="container">

          <h1 class="title">Microblog</h1>
          
          <xsl:for-each select="item">
              <!-- <h3><xsl:value-of select="title" /></h3> -->
              <div class="box">
                <p class="pubDate"><xsl:value-of select="pubDate" /></p>
                <hr class="weak"/>
                <p><xsl:value-of select="description" disable-output-escaping="yes" /></p>
              </div>
          </xsl:for-each>

        </div>

      </section>

		</body>
		</html>

	</xsl:template>

</xsl:stylesheet>