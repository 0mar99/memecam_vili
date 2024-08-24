.class public Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/CrashAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileProcessor"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final synthetic d:Lcom/xiaomi/onetrack/CrashAnalysis;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/CrashAnalysis;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->d:Lcom/xiaomi/onetrack/CrashAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->c:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".xcrash"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "__"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 6
    aget-object p0, p0, p1

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 7
    array-length p1, p0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 8
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {p0, v2}, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const v3, 0x19000

    .line 13
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 14
    aget-object v5, v3, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->d:Lcom/xiaomi/onetrack/CrashAnalysis;

    invoke-static {v5}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Lcom/xiaomi/onetrack/CrashAnalysis;)Lcom/xiaomi/onetrack/api/m;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 15
    aget-object v5, v3, v4

    iget-object v6, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 16
    aget-object v5, v3, v4

    iget-object v6, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    aget-object v6, v3, v4

    invoke-static {v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Ljava/lang/String;)J

    move-result-wide v9

    .line 18
    aget-object v6, v3, v0

    invoke-static {v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fileName: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "CrashAnalysis"

    invoke-static {v12, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "feature id: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "crashTimeStamp: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dynamicCommonProperty: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v11, :cond_0

    const-string v13, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v6, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->d:Lcom/xiaomi/onetrack/CrashAnalysis;

    invoke-static {v6}, Lcom/xiaomi/onetrack/CrashAnalysis;->a(Lcom/xiaomi/onetrack/CrashAnalysis;)Lcom/xiaomi/onetrack/api/m;

    move-result-object v6

    aget-object v4, v3, v4

    iget-object v13, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->c:Ljava/lang/String;

    move-object v3, v6

    move-object v6, v13

    invoke-virtual/range {v3 .. v11}, Lcom/xiaomi/onetrack/api/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 25
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/xiaomi/onetrack/util/k;->a(Ljava/io/File;)V

    const-string v2, "remove reported crash file"

    .line 26
    invoke-static {v12, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/onetrack/CrashAnalysis$FileProcessor;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
