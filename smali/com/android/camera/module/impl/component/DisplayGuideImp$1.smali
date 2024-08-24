.class public Lcom/android/camera/module/impl/component/DisplayGuideImp$1;
.super Ljava/lang/Object;
.source "DisplayGuideImp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/DisplayGuideImp;->showFrontFacingDisplayFoldTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/DisplayGuideImp;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/DisplayGuideImp$1;->this$0:Lcom/android/camera/module/impl/component/DisplayGuideImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/CameraSwitcher;->impl2()Lcom/android/camera/protocol/protocols/CameraSwitcher;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/CameraSwitcher;->onSwitchCameraPicker(Z)V

    :cond_0
    return-void
.end method
