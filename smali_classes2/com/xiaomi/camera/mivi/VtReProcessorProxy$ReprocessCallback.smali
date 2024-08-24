.class public Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;
.super Ljava/lang/Object;
.source "VtReProcessorProxy.java"

# interfaces
.implements Lcom/xiaomi/camera/imagecodec/ReprocessData$OnDataAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/mivi/VtReProcessorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReprocessCallback"
.end annotation


# instance fields
.field public mVtReProcessorProxyRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/camera/mivi/VtReProcessorProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/mivi/VtReProcessorProxy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;->mVtReProcessorProxyRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onEarlyMetaAvailable(Lcom/xiaomi/camera/isp/ISPResult;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;->mVtReProcessorProxyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;->mVtReProcessorProxyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;

    invoke-static {p0, p1}, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->access$100(Lcom/xiaomi/camera/mivi/VtReProcessorProxy;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "VtReProcessorProxy"

    const-string p1, "onError: but host VtReProcessorProxy is recycle"

    .line 3
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onJpegAvailable([BLjava/lang/String;)V
    .locals 0

    const/4 p0, 0x3

    const-string p1, "VtReProcessorProxy"

    const-string p2, "onJpegAvailable"

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onJpegImageAvailable(Landroid/media/Image;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 2
    aget-object v0, p2, p3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 3
    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, v2

    const-string p3, "onJpegImageAvailable: timestamp = %d, index = %d"

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "VtReProcessorProxy"

    const/4 v1, 0x4

    invoke-static {v1, v0, p3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p3, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;->mVtReProcessorProxyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    iget-object p0, p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy$ReprocessCallback;->mVtReProcessorProxyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;

    invoke-static {p0, p1, p2}, Lcom/xiaomi/camera/mivi/VtReProcessorProxy;->access$000(Lcom/xiaomi/camera/mivi/VtReProcessorProxy;Landroid/media/Image;I)V

    goto :goto_0

    :cond_0
    const-string p0, "onJpegImageAvailable: but host VtReProcessorProxy is recycle"

    .line 7
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onTuningImageAvailable(Landroid/media/Image;Ljava/lang/String;Z)V
    .locals 0

    const/4 p0, 0x3

    const-string p1, "VtReProcessorProxy"

    const-string p2, "onTuningImageAvailable: "

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onYuvAvailable(Landroid/media/Image;Ljava/lang/String;Z)V
    .locals 0

    const/4 p0, 0x3

    const-string p1, "VtReProcessorProxy"

    const-string p2, "onYuvAvailable: "

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
