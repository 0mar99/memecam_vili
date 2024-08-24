.class public final Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;
.super Ljava/lang/Object;
.source "SplitAABInfoProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SplitAABInfoProvider"


# instance fields
.field public context:Landroid/content/Context;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->packageName:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->context:Landroid/content/Context;

    return-void
.end method

.method private cutSplitName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "\\.config\\."

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getFusedModules()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SplitAABInfoProvider"

    .line 1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->packageName:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 3
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string v3, "shadow.bundletool.com.android.dynamic.apk.fused.modules"

    .line 4
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, -0x1

    const-string v2, ","

    .line 5
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string p0, ""

    .line 6
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    new-array p0, v2, [Ljava/lang/Object;

    const-string v2, "App has no fused modules."

    .line 7
    invoke-static {v0, v2, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-array p0, v2, [Ljava/lang/Object;

    const-string v2, "App has no applicationInfo or metaData"

    .line 8
    invoke-static {v0, v2, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception p0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "App is not found in PackageManager"

    .line 9
    invoke-static {v0, p0, v3, v2}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private getSplitInstallInfo()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SplitAABInfoProvider"

    const-string v3, "App is not found in PackageManager"

    .line 2
    invoke-static {v2, p0, v3, v1}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getInstalledSplitsForAAB()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->getFusedModules()Ljava/util/Set;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->getSplitInstallInfo()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplitAABInfoProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    new-array p0, v3, [Ljava/lang/Object;

    const-string v1, "No splits are found or app cannot be found in package manager."

    .line 4
    invoke-static {v2, v1, p0}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const-string v4, "Split names are: "

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/iqiyi/android/qigsaw/core/common/SplitLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    const-string v5, "config."

    .line 8
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 9
    invoke-direct {p0, v4}, Lcom/iqiyi/android/qigsaw/core/common/SplitAABInfoProvider;->cutSplitName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
