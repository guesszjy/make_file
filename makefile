.PHONY:all clean		#伪目标

SRCS = $(wildcard *.c)	#扫描目录下全部.c文件
OBJS = $(SRCS:.c=.o)	#字符串替换
BIN  = mp3
all: $(BIN)				#生成多个目标

$(BIN):$(OBJS)
	@echo "SRCS =$(SRCS)"
	@echo "OBJS =$(OBJS)"
	gcc -o $@ $^
%.o:%.c
	gcc -o $@ -c $^
clean:
	rm -f  $(BIN) $(OBJS)
