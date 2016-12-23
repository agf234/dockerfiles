FROM blog_container:latest
RUN rm -fR altbosh && git clone https://github.com/agf234/altbosh.git && \
cd altbosh && go build altbosh.go && \
mkdir ~/altbosh && mkdir ~/altbosh/bkp &&  mkdir ~/altbosh/target 
CMD /altbosh/altbosh list
