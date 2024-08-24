.class public Lcom/android/camera/module/video/FilmExposureDelayModule$1;
.super Ljava/lang/Object;
.source "FilmExposureDelayModule.java"

# interfaces
.implements Lcom/android/camera/module/VideoBase$OnTagsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video/FilmExposureDelayModule;->getTagsListener(Lcom/android/camera/module/VideoBase$OnTagsListener;)Lcom/android/camera/module/VideoBase$OnTagsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/video/FilmExposureDelayModule;

.field public final synthetic val$listener:Lcom/android/camera/module/VideoBase$OnTagsListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/FilmExposureDelayModule;Lcom/android/camera/module/VideoBase$OnTagsListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/FilmExposureDelayModule$1;->this$0:Lcom/android/camera/module/video/FilmExposureDelayModule;

    iput-object p2, p0, Lcom/android/camera/module/video/FilmExposureDelayModule$1;->val$listener:Lcom/android/camera/module/VideoBase$OnTagsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagsReady(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/FilmExposureDelayModule$1;->val$listener:Lcom/android/camera/module/VideoBase$OnTagsListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    const/4 v1, 0x0

    const-string v2, "com.xiaomi.film_exposuredelay"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/video/FilmExposureDelayModule$1;->val$listener:Lcom/android/camera/module/VideoBase$OnTagsListener;

    invoke-interface {p0, p1}, Lcom/android/camera/module/VideoBase$OnTagsListener;->onTagsReady(Ljava/util/List;)V

    :cond_0
    return-void
.end method
