# Cache Comments

## Introduction
Sometimes it's hard to figure out what fragment has been cached how, when and under which key. Russian Doll caching - as awesome as it is - doesn't help making caches more maintainable. Cache Comments to the resque.

Cache Comments wraps your cached fragment in a set of html comments. The first tells you what you need to know, the second where the current fragment ends.

This is what a cached fragment might look like after using cache comments:

	<!-- cached 2012-09-08 12:49:23 +0200 with key views/products/5-20120906161143/362b97c5692aaea03952ef45d53b8ca2 valid until 2012-10-06 12:49:23 +0200 -->
	<div>...</div>
	<!-- end of views/products/5-20120906161143/362b97c5692aaea03952ef45d53b8ca2 -->\n


## ToDos
* Make configurable