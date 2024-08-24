.class public Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraFocusEyeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->startAlphaAnim(Landroid/view/View;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

.field public final synthetic val$inOrOut:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable$2;->val$inOrOut:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable$2;->val$inOrOut:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->access$000(Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->setVisible(I)V

    :cond_0
    return-void
.end method
