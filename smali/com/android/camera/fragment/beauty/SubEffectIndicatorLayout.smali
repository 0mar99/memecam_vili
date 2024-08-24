.class public Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;
.super Landroid/widget/LinearLayout;
.source "SubEffectIndicatorLayout.java"

# interfaces
.implements Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mDegree:I

.field public mOnIndicatorChangeListener:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;

.field public mSubEffectUIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SubEffectUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setAccessible(Landroid/view/View;IZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120203

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooO0oO;

    invoke-direct {p2, p0, p1}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooO0oO;-><init>(Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x80

    .line 19
    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/fragment/beauty/SubEffectUI;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ColorImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 3
    iget v1, p1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconRes:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconShadowRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-boolean v1, p1, Lcom/android/camera/fragment/beauty/SubEffectUI;->isDefault:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mOnIndicatorChangeListener:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 8
    invoke-interface {v1, p1, v2}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;->onIndicatorChange(Lcom/android/camera/fragment/beauty/SubEffectUI;I)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 10
    iget p1, p1, Lcom/android/camera/fragment/beauty/SubEffectUI;->displayNameRes:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->setAccessible(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 12
    iget p1, p1, Lcom/android/camera/fragment/beauty/SubEffectUI;->displayNameRes:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->setAccessible(Landroid/view/View;IZ)V

    .line 13
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 15
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    :cond_2
    iget p0, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mDegree:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public addIndicatorViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SubEffectUI;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mSubEffectUIS:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mSubEffectUIS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooO0o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/OoooOoO/o0OoOo0/OooO0o;-><init>(Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public getIndicatorCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mSubEffectUIS:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isVisible()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/SubEffectUI;

    .line 2
    iget-object v1, v0, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/android/camera/ui/ColorImageView;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    if-ne v2, p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 6
    iget v4, v0, Lcom/android/camera/fragment/beauty/SubEffectUI;->displayNameRes:I

    invoke-direct {p0, v2, v4, v3}, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->setAccessible(Landroid/view/View;IZ)V

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    .line 7
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mOnIndicatorChangeListener:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;

    if-eqz p0, :cond_3

    .line 9
    invoke-interface {p0, v0, v3}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;->onIndicatorChange(Lcom/android/camera/fragment/beauty/SubEffectUI;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput p2, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mDegree:I

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 8
    iget v0, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mDegree:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeAllIndicatorViews()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ColorImageView;

    .line 4
    invoke-static {v1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public setCheck(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ColorImageView;

    .line 4
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/beauty/SubEffectUI;

    .line 6
    iget-object v3, v2, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mOnIndicatorChangeListener:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    .line 9
    invoke-interface {v1, v2, v3}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;->onIndicatorChange(Lcom/android/camera/fragment/beauty/SubEffectUI;I)V

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setOnIndicatorChangeListener(Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mOnIndicatorChangeListener:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
