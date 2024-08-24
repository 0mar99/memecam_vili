.class public Lcom/android/camera/features/mode/dualcam/DualCamModeUI$2;
.super Ljava/lang/Object;
.source "DualCamModeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/dualcam/DualCamModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mode/dualcam/DualCamModeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mode/dualcam/DualCamModeUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mode/dualcam/DualCamModeUI$2;->this$0:Lcom/android/camera/features/mode/dualcam/DualCamModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x200

    .line 2
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/protocols/ConfigChanges;->onConfigChanged(I)V

    :cond_0
    return-void
.end method
