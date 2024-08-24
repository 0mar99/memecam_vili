.class public Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lcom/android/camera/protocol/protocols/CameraModuleSpecial;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleSpecialProtocolImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isStartCountCapture()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module;->mTimerBurst:Lcom/android/camera/timerburst/TimerBurstManager;

    iget-boolean p0, p0, Lcom/android/camera/timerburst/TimerBurstManager;->mIsStartCount:Z

    return p0
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CameraModuleSpecial;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public showQRCodeResult(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$ModuleSpecialProtocolImpl;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->dismissKeyguard()V

    .line 5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.scanner.receiver.senderbarcodescanner"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.xiaomi.scanner"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.xiaomi.scanner.module.code.app.BarCodeScannerReceiver"

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "result"

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x3

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 12
    invoke-static {}, Lcom/android/zxing/decoders/qrcode/QRCodeDecoder;->getInstanceOpt()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000OoOo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000OoOo;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 13
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "showQRCodeResult: get a null result!"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/CameraModuleSpecial;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method
