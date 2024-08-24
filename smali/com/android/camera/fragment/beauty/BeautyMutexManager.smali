.class public Lcom/android/camera/fragment/beauty/BeautyMutexManager;
.super Ljava/lang/Object;
.source "BeautyMutexManager.java"


# instance fields
.field public mBeautyMutexList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/fragment/beauty/IBeautyMutex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->mBeautyMutexList:Ljava/util/Map;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/fragment/beauty/IBeautyMutex;Ljava/util/Map$Entry;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautyMutex;->getMutexArray()[Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/beauty/IBeautyMutex;

    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautyMutex;->isMutexOther()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/fragment/beauty/IBeautyMutex;->handleMutex(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->mBeautyMutexList:Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public handleMutexSpecifyBeautyType(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->mBeautyMutexList:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->mBeautyMutexList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/beauty/IBeautyMutex;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0, p2}, Lcom/android/camera/fragment/beauty/IBeautyMutex;->handleMutex(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public oneKeyCloseMutexSpecifyBeautyType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->mBeautyMutexList:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->mBeautyMutexList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/beauty/IBeautyMutex;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Lcom/android/camera/fragment/beauty/IBeautyMutex;->oneKeyCloseMutex()V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerMutex(Lcom/android/camera/fragment/beauty/IBeautyMutex;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->mBeautyMutexList:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/camera/fragment/beauty/IBeautyMutex;->getBeautyType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateMutex(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->mBeautyMutexList:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->mBeautyMutexList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/IBeautyMutex;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->mBeautyMutexList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooO0O0;

    invoke-direct {v1, p1, v0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooO0O0;-><init>(Ljava/lang/String;Lcom/android/camera/fragment/beauty/IBeautyMutex;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method
