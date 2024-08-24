.class public Lcom/android/camera/aiwatermark/handler/ChinaASDHandler;
.super Lcom/android/camera/aiwatermark/handler/ASDHandler;
.source "ChinaASDHandler.java"


# direct methods
.method public constructor <init>(ZLandroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/aiwatermark/handler/ASDHandler;-><init>(ZLandroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/aiwatermark/handler/ASDHandler;->findWatermark()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object p0

    return-object p0
.end method

.method public getASDWatermarkList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/android/camera/aiwatermark/data/ASDWatermark;

    invoke-direct {p0}, Lcom/android/camera/aiwatermark/data/ASDWatermark;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/data/ASDWatermark;->getForAI()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
