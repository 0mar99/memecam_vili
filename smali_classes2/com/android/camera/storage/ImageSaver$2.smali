.class public Lcom/android/camera/storage/ImageSaver$2;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/ImageSaver;->postHideThumbnailProgressing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$2;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ActionProcessing;->impl2()Lcom/android/camera/protocol/protocols/ActionProcessing;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/protocols/ActionProcessing;->updateLoading(Z)V

    :cond_0
    return-void
.end method
