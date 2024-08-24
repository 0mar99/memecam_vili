.class public Lcom/android/camera/module/VideoBase$3;
.super Ljava/lang/Object;
.source "VideoBase.java"

# interfaces
.implements Lcom/android/camera/MutexModeManager$MutexCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoBase$3;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterMutexMode(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/VideoBase$3;->this$0:Lcom/android/camera/module/VideoBase;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->setZoomRatio(F)V

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$3;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void
.end method

.method public exitMutexMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/VideoBase$3;->this$0:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    return-void
.end method
