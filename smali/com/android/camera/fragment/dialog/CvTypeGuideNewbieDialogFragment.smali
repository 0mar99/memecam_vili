.class public Lcom/android/camera/fragment/dialog/CvTypeGuideNewbieDialogFragment;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source "CvTypeGuideNewbieDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/dialog/CvTypeGuideNewbieDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/dialog/CvTypeGuideNewbieDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/CvTypeGuideNewbieDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->setCvTypeHintShown()V

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/dialog/CvTypeGuideNewbieDialogFragment;->onBackEvent(I)Z

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public getBgColor()I
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-static {p0, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public onBackEvent(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/fragment/dialog/CvTypeGuideNewbieDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackEvent"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->onBackEvent(I)Z

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00Oo0/OooO0O0;

    invoke-direct {p2, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o00Oo0/OooO0O0;-><init>(Lcom/android/camera/fragment/dialog/CvTypeGuideNewbieDialogFragment;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method
