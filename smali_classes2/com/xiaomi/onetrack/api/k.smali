.class public Lcom/xiaomi/onetrack/api/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final a:Ljava/lang/String; = "OneTrackExceptionHandler"

.field public static final c:Ljava/lang/String; = "tombstone"

.field public static final d:Ljava/lang/String; = ".java.xcrash"

.field public static final e:Ljava/lang/String; = "backtrace feature id:\n\t"

.field public static final f:Ljava/lang/String; = "error reason:\n\t"

.field public static final h:J = 0x2L


# instance fields
.field public b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final g:Ljava/util/Date;

.field public i:Lcom/xiaomi/onetrack/api/m;

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/api/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/k;->g:Ljava/util/Date;

    const/16 v0, 0x32

    .line 3
    iput v0, p0, Lcom/xiaomi/onetrack/api/k;->j:I

    .line 4
    iput v0, p0, Lcom/xiaomi/onetrack/api/k;->k:I

    const/16 v0, 0xc8

    .line 5
    iput v0, p0, Lcom/xiaomi/onetrack/api/k;->l:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/k;->m:Z

    .line 7
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/k;->n:Z

    .line 8
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/k;->i:Lcom/xiaomi/onetrack/api/m;

    return-void
.end method

.method private a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/k;->g:Ljava/util/Date;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/onetrack/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java"

    invoke-static {p0, p1, v3, v1, v2}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "pid: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", tid: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", name: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  >>> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " <<<\n\njava stacktrace:\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/k;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/k;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "\n\n"

    const-string v3, "JavaCrashHandler close RandomAccessFile failed"

    const-string v4, "OneTrackExceptionHandler"

    const-string v5, "UTF-8"

    .line 6
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%s/%s_%020d_%s__%s%s"

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/onetrack/CrashAnalysis;->getCrashPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v11, 0x1

    const-string v12, "tombstone"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v1, Lcom/xiaomi/onetrack/api/k;->g:Ljava/util/Date;

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 8
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/xiaomi/onetrack/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, ".java.xcrash"

    aput-object v12, v10, v11

    .line 9
    invoke-static {v0, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v9, v8

    :goto_0
    const-string v10, "JavaCrashHandler createLogFile failed"

    .line 13
    invoke-static {v4, v10, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_0
    :goto_1
    :try_start_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 15
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v11, p2

    .line 16
    :try_start_3
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v12, p1

    .line 18
    :try_start_4
    invoke-direct {v1, v6, v12, v10}, Lcom/xiaomi/onetrack/api/k;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v11, p2

    :goto_2
    move-object v10, v8

    :goto_3
    const-string v6, "JavaCrashHandler getEmergency failed"

    .line 19
    invoke-static {v4, v6, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    :goto_4
    if-eqz v9, :cond_9

    .line 20
    :try_start_5
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v12, "rws"

    invoke-direct {v6, v9, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 21
    :try_start_6
    invoke-static {v10}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 22
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "backtrace feature id:\n\t"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-virtual {v9, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/RandomAccessFile;->write([B)V

    .line 24
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error reason:\n\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-virtual {v9, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/RandomAccessFile;->write([B)V

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 27
    :cond_1
    iget v0, v1, Lcom/xiaomi/onetrack/api/k;->l:I

    if-gtz v0, :cond_2

    iget v0, v1, Lcom/xiaomi/onetrack/api/k;->j:I

    if-gtz v0, :cond_2

    iget v0, v1, Lcom/xiaomi/onetrack/api/k;->k:I

    if-lez v0, :cond_3

    .line 28
    :cond_2
    iget v0, v1, Lcom/xiaomi/onetrack/api/k;->l:I

    iget v9, v1, Lcom/xiaomi/onetrack/api/k;->j:I

    iget v10, v1, Lcom/xiaomi/onetrack/api/k;->k:I

    invoke-static {v0, v9, v10}, Lcom/xiaomi/onetrack/util/b;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 29
    :cond_3
    iget-boolean v0, v1, Lcom/xiaomi/onetrack/api/k;->m:Z

    if-eqz v0, :cond_4

    .line 30
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 31
    :cond_4
    iget-boolean v0, v1, Lcom/xiaomi/onetrack/api/k;->n:Z

    if-eqz v0, :cond_5

    .line 32
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 33
    :cond_5
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    const-string v0, "foreground:\nyes\n\n"

    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 35
    iget-object v0, v1, Lcom/xiaomi/onetrack/api/k;->i:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/m;->b()Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/xiaomi/onetrack/api/k;->i:Lcom/xiaomi/onetrack/api/m;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/m;->b()Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;

    move-result-object v0

    const-string v1, "onetrack_bug_report"

    invoke-interface {v0, v1}, Lcom/xiaomi/onetrack/OneTrack$ICommonPropertyProvider;->getDynamicProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 36
    :cond_6
    invoke-static {v8, v7}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 37
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dynamic common property:\n\t"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 40
    :cond_7
    :try_start_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v6

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v8, v6

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_5
    :try_start_8
    const-string v1, "JavaCrashHandler write log file failed"

    .line 41
    invoke-static {v4, v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v8, :cond_9

    .line 42
    :try_start_9
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 43
    invoke-static {v4, v3, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_6
    if-eqz v8, :cond_8

    .line 44
    :try_start_a
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 45
    invoke-static {v4, v3, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    :cond_8
    :goto_7
    throw v1

    :cond_9
    :goto_8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/xiaomi/onetrack/api/k;

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/k;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "OneTrackExceptionHandler"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crash happened->stacktrace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Lcom/xiaomi/onetrack/api/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/l;-><init>(Lcom/xiaomi/onetrack/api/k;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3
    new-instance v2, Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 4
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x2

    .line 5
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleException error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/k;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
