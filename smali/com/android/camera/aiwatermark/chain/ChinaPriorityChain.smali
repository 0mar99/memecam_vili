.class public Lcom/android/camera/aiwatermark/chain/ChinaPriorityChain;
.super Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;
.source "ChinaPriorityChain.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/aiwatermark/chain/AbstractPriorityChain;-><init>()V

    return-void
.end method


# virtual methods
.method public createASDChain(Landroid/content/Context;)Lcom/android/camera/aiwatermark/handler/AbstractHandler;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;-><init>(ZLandroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/android/camera/aiwatermark/handler/ChinaTimeHandler;

    invoke-direct {p1, v0}, Lcom/android/camera/aiwatermark/handler/ChinaTimeHandler;-><init>(Z)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    return-object p0
.end method

.method public createChain(Landroid/content/Context;I)Lcom/android/camera/aiwatermark/handler/AbstractHandler;
    .locals 3

    .line 1
    new-instance p0, Lcom/android/camera/aiwatermark/handler/ChinaScenicSpotsHandler;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/aiwatermark/handler/ChinaScenicSpotsHandler;-><init>(Z)V

    .line 2
    new-instance v1, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;

    invoke-direct {v1, v0}, Lcom/android/camera/aiwatermark/handler/ChinaFestivalHandler;-><init>(Z)V

    .line 3
    new-instance v2, Lcom/android/camera/aiwatermark/handler/ChinaASDHandler;

    invoke-direct {v2, v0, p1, p2}, Lcom/android/camera/aiwatermark/handler/ChinaASDHandler;-><init>(ZLandroid/content/Context;I)V

    .line 4
    new-instance p2, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;

    invoke-direct {p2, v0, p1}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;-><init>(ZLandroid/content/Context;)V

    .line 5
    new-instance p1, Lcom/android/camera/aiwatermark/handler/ChinaTimeHandler;

    invoke-direct {p1, v0}, Lcom/android/camera/aiwatermark/handler/ChinaTimeHandler;-><init>(Z)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    .line 8
    invoke-virtual {v2, p2}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    .line 9
    invoke-virtual {p2, p1}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->setNextHandler(Lcom/android/camera/aiwatermark/handler/AbstractHandler;)V

    return-object p0
.end method
