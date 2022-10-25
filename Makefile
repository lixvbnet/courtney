
all: install_tools test

test: clean
	go run courtney.go -o c.out ./newpac
	gocov convert c.out | gocov report
	gocov convert c.out | gocov-xml > C.xml
	gocov convert c.out | gocov-html > C.html

clean:
	rm -f c.out C.xml C.html

install_tools:
	go install github.com/axw/gocov/gocov@latest
	go install github.com/AlekSi/gocov-xml@latest
	go install github.com/matm/gocov-html@latest
