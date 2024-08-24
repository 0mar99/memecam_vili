.class public Lcom/android/camera/features/FeatureLoader;
.super Ljava/lang/Object;
.source "FeatureLoader.java"


# static fields
.field public static final PLUGIN_PATH:Ljava/lang/String; = "features/cam_plugin.xml"

.field public static final PLUGIN_PREFIX:Ljava/lang/String; = "String"

.field public static final PREF_TAG:Ljava/lang/String; = "feature load"

.field public static final TAG:Ljava/lang/String; = "FeatureLoader"

.field public static final XML_PARSER_FORMAT:Ljava/lang/String; = "UTF-8"

.field public static sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/module/entry/IModuleEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/features/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntries()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/module/entry/IModuleEntry;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/features/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/features/FeatureLoader;->TAG:Ljava/lang/String;

    const-string v1, "Build In Entries is NOT ready."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/features/FeatureLoader;->load(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static getFeatureNames(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    if-eq v3, v1, :cond_3

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "String"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 6
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v0

    .line 7
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    .line 9
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getFeaturesParse(Ljava/lang/String;Landroid/content/Context;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string p1, "UTF-8"

    .line 3
    invoke-interface {v0, p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized load(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/module/entry/IModuleEntry;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/camera/features/FeatureLoader;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/features/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    sget-object p0, Lcom/android/camera/features/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "features/cam_plugin.xml"

    .line 3
    invoke-static {v1, p0}, Lcom/android/camera/features/FeatureLoader;->getFeaturesParse(Ljava/lang/String;Landroid/content/Context;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/android/camera/features/FeatureLoader;->getFeatureNames(Lorg/xmlpull/v1/XmlPullParser;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v2

    const-string v3, "feature load"

    invoke-virtual {v2, v3}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, p0}, Lcom/android/camera/features/FeatureLoader;->loadClasses([Ljava/lang/String;Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    sput-object v2, Lcom/android/camera/features/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p0

    const-string v1, "feature load"

    invoke-virtual {p0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 8
    :cond_1
    sget-object p0, Lcom/android/camera/features/FeatureLoader;->sBuildInEntries:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadClasses([Ljava/lang/String;Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/camera/module/entry/IModuleEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    const-class v1, Lcom/android/camera/features/FeatureLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 3
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p0, v4

    if-eqz v5, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    aget-object v5, v5, v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    .line 6
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/module/entry/IModuleEntry;

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v5}, Lcom/android/camera/module/entry/IModuleEntry;->support()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    invoke-interface {v5}, Lcom/android/camera/module/entry/IModuleEntry;->getModuleId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v0, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 10
    invoke-virtual {v5}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
