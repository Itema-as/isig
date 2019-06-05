# isig
Itema e-mail signature generator

## Building

The following code will build and create an Docker image file that can be 
started as a container.

	./mvnw install dockerfile:build && rm -f itema-isig.tar.gz \
		&& docker save no.itema/isig | gzip -c > itema-isig.tar.gz

The image file will weigh in at about 134MiB.		