echo "ac_cv_file__dev_ptmx=no" > config.site
echo "ac_cv_file__dev_ptc=no" >> config.site

export CONFIG_SITE=config.site

sh configure --host=arm-linux-android \
			 --build=$(sh config.guess) \
			 --disable-ipv6 \
			 