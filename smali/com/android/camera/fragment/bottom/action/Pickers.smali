.class public Lcom/android/camera/fragment/bottom/action/Pickers;
.super Ljava/lang/Object;
.source "Pickers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/bottom/action/Pickers$LocationType;
    }
.end annotation


# static fields
.field public static final CAMERA_FACING:I = 0xc1

.field public static final DUAL_UP_DOWN:I = 0xc4

.field public static final HINT:I = 0xc9

.field public static final ID_CARD_MODE:I = 0xc8

.field public static final INVALID:I = 0xc0

.field public static final RECORD_REVERSE:I = 0xc7

.field public static final RECORD_SNAP:I = 0xc6

.field public static final TAG:Ljava/lang/String; = "Pickers"

.field public static final TARGET_SWITCH_CAPTURE:I = 0xc2

.field public static final TARGET_SWITCH_VIDEO:I = 0xc3


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentType:I

.field public mModulePersistentType:I

.field public mNeedBackground:Z

.field public mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mPickerParent:Landroid/view/ViewGroup;

.field public mScaleSize:F

.field public mUpDownAnimFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    const/16 v0, 0xc0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    .line 4
    iput v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mModulePersistentType:I

    .line 5
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    .line 7
    iput-object p3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const p2, 0x7f070791

    const p3, 0x3eb33333    # 0.35f

    .line 8
    invoke-static {p1, p2, p3}, Lcom/android/camera/CameraSettings;->getResourceFloat(Landroid/content/Context;IF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    return-void
.end method


# virtual methods
.method public cancelCurrentAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method

.method public currentHasBackground()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    return p0
.end method

.method public getLayout()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getModulePersistentType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mModulePersistentType:I

    return p0
.end method

.method public hide()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xc0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    return-void
.end method

.method public loadByType(Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZIZ)V

    return-void
.end method

.method public loadByType(Ljava/util/List;ZIZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;ZIZ)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p3, :cond_0

    if-nez p4, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    move p4, v2

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v3

    invoke-interface {v3, p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->isNeedBackground(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mNeedBackground:Z

    .line 7
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearColorFilter()V

    const v3, 0x7f120038

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    move v6, v1

    move-object v3, v5

    goto/16 :goto_4

    .line 8
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f12010f

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v9, 0x7f08047c

    invoke-interface {v7, v8, v9}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    goto :goto_1

    .line 10
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f120081

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v9, 0x7f0804a6

    invoke-interface {v7, v8, v9}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->setPickersRecordReverseColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto :goto_1

    .line 13
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f1200b2

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 14
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    const v7, 0x7f0804a2

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 15
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->setPickersAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 16
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v8, 0x7f060387

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_1
    move v6, v1

    goto/16 :goto_4

    .line 17
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f120050

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 18
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 19
    iget-boolean v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    if-eqz v6, :cond_2

    .line 20
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v9, 0x7f110006

    invoke-interface {v7, v8, v9}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_2

    .line 21
    :cond_2
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v9, 0x7f110005

    invoke-interface {v7, v8, v9}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 22
    :goto_2
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_1

    :pswitch_5
    if-eqz v0, :cond_3

    .line 23
    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xc2

    if-ne v6, v7, :cond_3

    move p2, v2

    move-object p1, v5

    .line 24
    :cond_3
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 25
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    invoke-interface {v7, v8}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getScaleSize(F)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 26
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v7

    .line 27
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v10, 0x7f11004f

    invoke-interface {v8, v9, v10}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v8

    .line 28
    invoke-virtual {v7, v8, v2}, Lcom/android/camera/customization/ThemeResource;->getResId(IZ)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 29
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto/16 :goto_1

    :pswitch_6
    if-eqz v0, :cond_4

    .line 30
    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xc3

    if-ne v6, v7, :cond_4

    move p2, v2

    move-object p1, v5

    .line 31
    :cond_4
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 32
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mScaleSize:F

    invoke-interface {v7, v8}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getScaleSize(F)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 33
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v7

    .line 34
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v10, 0x7f110055

    invoke-interface {v8, v9, v10}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v8

    .line 35
    invoke-virtual {v7, v8, v2}, Lcom/android/camera/customization/ThemeResource;->getResId(IZ)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 36
    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto/16 :goto_1

    .line 37
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120033

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 38
    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 39
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f12065c

    goto :goto_3

    :cond_5
    const v7, 0x7f12065a

    .line 40
    :goto_3
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationMimoji()Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v8, 0x7f08049a

    invoke-interface {v6, v7, v8}, Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;->getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 42
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v7, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {v6, v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->setPickersSwitchCameraColor(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto/16 :goto_1

    :pswitch_8
    move v6, v2

    move-object p1, v5

    move-object v3, p1

    .line 44
    :goto_4
    iput p3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    .line 45
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_6

    .line 46
    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xc9

    if-ne v7, v8, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    if-eqz v0, :cond_7

    .line 47
    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p3, :cond_7

    goto :goto_6

    :cond_7
    move v2, p2

    .line 48
    :goto_6
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 49
    iget-boolean v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mNeedBackground:Z

    if-nez v7, :cond_8

    .line 50
    iget-object v7, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    const/16 v5, 0xc0

    if-eq p3, v5, :cond_a

    if-eqz v0, :cond_9

    .line 51
    check-cast v0, Ljava/lang/Integer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-eq p3, v5, :cond_a

    :cond_9
    iget-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mNeedBackground:Z

    if-eq p4, p3, :cond_b

    .line 53
    :cond_a
    iget-object p2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    :cond_b
    const/high16 p3, 0x3f000000    # 0.5f

    if-eqz v6, :cond_10

    const/4 p4, 0x0

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    move p3, p4

    .line 54
    :goto_7
    iget-object p4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    if-ne p2, p4, :cond_d

    .line 55
    iget-object p4, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-static {p4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 56
    :cond_d
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 p0, 0x96

    if-eqz p1, :cond_e

    .line 57
    new-instance p4, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p4, p2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p4, p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p2

    .line 58
    invoke-virtual {p2, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 59
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    if-eqz v2, :cond_f

    .line 60
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {p1, p2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_8

    .line 64
    :cond_f
    invoke-static {p2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_8

    :cond_10
    if-eqz v1, :cond_11

    move v4, p3

    :cond_11
    if-eqz p1, :cond_12

    .line 65
    new-instance p0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p0, p2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    if-eqz v2, :cond_13

    .line 66
    new-instance p0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {p0, p2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setStartAlpha(F)Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_8

    .line 67
    :cond_13
    invoke-static {p2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public needBackground()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mNeedBackground:Z

    return p0
.end method

.method public playAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public playSwitchCaptureVideoAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public playUpDownAnimation()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v3, 0x7f110005

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mUpDownAnimFlag:Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mContext:Landroid/content/Context;

    const v3, 0x7f110006

    invoke-interface {v1, v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->getBottomRes(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerImageView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setClickabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mPickerParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method public setModulePersistentType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mModulePersistentType:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/bottom/action/Pickers;->mCurrentType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/camera/fragment/bottom/action/Pickers;->loadByType(Ljava/util/List;ZI)V

    .line 2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationBottom()Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/fragment/bottom/action/Pickers;->getLayout()Landroid/view/View;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-interface {v0, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationBottomInterface;->handleTouch([Landroid/view/View;)V

    return-void
.end method
