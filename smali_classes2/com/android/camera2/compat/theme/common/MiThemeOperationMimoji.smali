.class public Lcom/android/camera2/compat/theme/common/MiThemeOperationMimoji;
.super Ljava/lang/Object;
.source "MiThemeOperationMimoji.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationMimojiInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustViewTintColor(Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/camera/ui/ColorImageView;Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconBg(I)I
    .locals 0

    return p1
.end method

.method public getIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public setIconBgColor(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public setIconDrawableColor(Landroid/widget/ImageView;)V
    .locals 0

    return-void
.end method

.method public setImageview(Landroid/widget/ImageView;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setSaveAnimation(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/customization/ThemeResource;->isFullScreen()Z

    move-result p0

    const v0, 0x7f110059

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/customization/ThemeResource;->getResId(IZ)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :goto_0
    return-void
.end method

.method public setTimBreBtnColor(ZLcom/android/camera/ui/ColorImageView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    return-void
.end method

.method public setTintColor(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setVectorColor(Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/customization/ThemeResource;->setVectorColor(Landroid/widget/ImageView;I)V

    return-void
.end method
