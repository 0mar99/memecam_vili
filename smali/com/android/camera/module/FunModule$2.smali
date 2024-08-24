.class public Lcom/android/camera/module/FunModule$2;
.super Lcom/android/camera/module/interceptor/CaptureInterceptor;
.source "FunModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/FunModule;->fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/FunModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/FunModule$2;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/CaptureInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public intercept()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/live/LiveVVChooser;->impl2()Lcom/android/camera/protocol/protocols/live/LiveVVChooser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/live/LiveVVChooser;->startShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/module/FunModule$2;->this$0:Lcom/android/camera/module/FunModule;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->enableCameraControls(Z)V

    :cond_0
    return-void
.end method
