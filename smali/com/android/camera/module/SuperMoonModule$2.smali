.class public Lcom/android/camera/module/SuperMoonModule$2;
.super Ljava/lang/Object;
.source "SuperMoonModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/SuperMoonModule;->tryRemoveCountDownMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/SuperMoonModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule$2;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/SuperMoonModule;->access$300()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "run: hide delay number in main thread"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getTopAlert()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/TopAlert;->hideDelayNumber()V

    return-void
.end method
