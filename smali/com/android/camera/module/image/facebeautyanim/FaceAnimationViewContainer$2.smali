.class public Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$2;
.super Ljava/lang/Object;
.source "FaceAnimationViewContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$2;->this$0:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$2;->this$0:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setFaceBeautyAnimatorPlayed(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/protocols/FaceAnimatorListener;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooO/OooO0O0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooO/OooO0O0;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/FaceAnimatorListener;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooO/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooO0/o000o00o/OooOooO/OooO0OO;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
