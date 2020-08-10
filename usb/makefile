.PHONY:all clean		#伪目标

SRCS = $(wildcard *.c)	#扫描目录下全部.c文件
OBJS = $(SRCS:.c=.o)	#字符串替换
DEPS = $(SRCS:.c=.d)
BIN  = 
all:$(DEPS) $(OBJS) $(BIN)
ifneq ("$(wildcard $(DEPS))","")
include $(DEPS)
endif
$(BIN):$(OBJS)
	gcc -o $@ $^
%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)  #从目标依赖变量中过滤出.c文件
%.d:%.c
	gcc -MM $^ > $@		#-MM自动扫描需要的依赖
clean:
	rm -f  $(BIN) $(OBJS) $(DEPS)
