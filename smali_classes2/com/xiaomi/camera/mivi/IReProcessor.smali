.class public abstract Lcom/xiaomi/camera/mivi/IReProcessor;
.super Ljava/lang/Object;
.source "IReProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/mivi/IReProcessor$Callback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract submit(Lcom/xiaomi/camera/mivi/bean/ResultImageData;Lcom/xiaomi/camera/mivi/IReProcessor$Callback;)V
.end method
