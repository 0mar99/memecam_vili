.class public Lcom/android/camera2/compat/theme/common/MiThemeOperationPanel;
.super Ljava/lang/Object;
.source "MiThemeOperationPanel.java"

# interfaces
.implements Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public LightingOutRectPosition(Landroid/content/Context;Landroid/graphics/Rect;IIZI)V
    .locals 0

    const/4 p0, 0x0

    if-eqz p5, :cond_1

    if-nez p3, :cond_0

    move p0, p4

    .line 1
    :cond_0
    invoke-virtual {p2, p4, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    move p0, p4

    .line 2
    :cond_2
    invoke-virtual {p2, p0, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public MimojiOutRectPosition(Landroid/content/Context;Landroid/graphics/Rect;IIIZI)V
    .locals 0

    const/4 p0, 0x0

    if-eqz p6, :cond_1

    if-nez p3, :cond_0

    add-int/2addr p5, p4

    goto :goto_0

    :cond_0
    move p5, p0

    .line 1
    :goto_0
    invoke-virtual {p2, p4, p0, p5, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    add-int/2addr p5, p4

    goto :goto_1

    :cond_2
    move p5, p0

    .line 2
    :goto_1
    invoke-virtual {p2, p5, p0, p4, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method

.method public WaterMarkOutRectPosition(Landroid/content/Context;Landroid/graphics/Rect;IIIZI)V
    .locals 0

    const/4 p0, 0x0

    if-eqz p6, :cond_1

    if-nez p3, :cond_0

    move p0, p4

    .line 1
    :cond_0
    invoke-virtual {p2, p4, p5, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    move p0, p4

    .line 2
    :cond_2
    invoke-virtual {p2, p0, p5, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public correctionSelectView(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/Util;->correctionSelectView(Landroid/view/View;Z)V

    return-void
.end method

.method public getAmbilightLayout()I
    .locals 0

    const p0, 0x7f0d002a

    return p0
.end method

.method public getAmbilightPanelLayout()I
    .locals 0

    const p0, 0x7f0d0054

    return p0
.end method

.method public getBeautyFxMakeupString(I)I
    .locals 0

    return p1
.end method

.method public getBeautyMoPrString(I)I
    .locals 0

    return p1
.end method

.method public getBeautySmTextureString(I)I
    .locals 0

    return p1
.end method

.method public getCalculateLP(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v0, 0x31

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x32

    if-eq p0, v0, :cond_2

    const/16 v0, 0x37

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61f

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "10"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v1

    goto :goto_1

    :cond_1
    const-string p0, "7"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string p0, "2"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v2

    goto :goto_1

    :cond_3
    const-string p0, "1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const p2, 0x7f070106

    if-eqz p0, :cond_5

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070142

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_2

    .line 4
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_2
    return p0
.end method

.method public getDownLoadFinishResource()I
    .locals 0

    const p0, 0x7f11004d

    return p0
.end method

.method public getDownLoadImageResource()I
    .locals 0

    const p0, 0x7f080462

    return p0
.end method

.method public getEffectFilterItemSelectorLayout()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f0801a9

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getTintResId(I)I

    move-result p0

    return p0
.end method

.method public getEffectItemAdapter(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)Lcom/android/camera/fragment/EffectItemAdapter;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/fragment/EffectItemAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)V

    return-object p0
.end method

.method public getEffectItemPadding(Landroid/content/Context;)Lcom/android/camera/fragment/EffectItemPadding;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/fragment/EffectItemPadding;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/EffectItemPadding;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getMakeUpAndFilterPanelMarginBottom(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public getMakeupSingleCheckAdapter(Landroid/content/Context;Ljava/util/List;II)Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;II)",
            "Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    return-object p0
.end method

.method public getMimojiAvatarAdapter(Landroid/content/Context;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method

.method public getMimojiBgLayout()I
    .locals 0

    const p0, 0x7f0d00a8

    return p0
.end method

.method public getMimojiBgView(Landroid/view/View;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMimojiBottomList()I
    .locals 0

    const p0, 0x7f0d00a0

    return p0
.end method

.method public getMimojiSelectedItemBgColor(I)I
    .locals 0

    return p1
.end method

.method public getMimojiTimbreView(Landroid/view/View;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModeDrawableRes(Landroid/content/Context;I)I
    .locals 0

    return p2
.end method

.method public getMomojiTimbreLayout()I
    .locals 0

    const p0, 0x7f0d00aa

    return p0
.end method

.method public getNormalRoundViewColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p0

    const v0, 0x7f060327

    invoke-virtual {p0, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getPanelAnimate()Lmiuix/animation/base/AnimConfig;
    .locals 2

    .line 1
    new-instance p0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public getPanelMarginStart(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPanelpadding(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07013c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getVVAndFilmGalleryItemLayout()I
    .locals 0

    const p0, 0x7f0d00ca

    return p0
.end method

.method public getVVAndFilmGalleryItemLayoutId()I
    .locals 0

    const p0, 0x7f0a04bf

    return p0
.end method

.method public getVVGalleryPanelLayout()I
    .locals 0

    const p0, 0x7f0d00c9

    return p0
.end method

.method public getWarterRecyclerviewItemLayout()I
    .locals 0

    const p0, 0x7f0d01a3

    return p0
.end method

.method public setMimojiBgColor(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getResourceId()I

    move-result p0

    if-lez p0, :cond_0

    const p0, 0x7f060386

    .line 2
    invoke-virtual {p4, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getResourceId()I

    move-result p0

    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0800ea

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p0, 0x7f08036d

    .line 5
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setMimojiTimbreColor(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getResourceId()I

    move-result p0

    if-lez p0, :cond_0

    const p0, 0x7f060386

    .line 2
    invoke-virtual {p4, p0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getResourceId()I

    move-result p0

    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0800ea

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p0, 0x7f08036d

    .line 5
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setWatermarkMarginBottom(Landroid/content/Context;Lcom/android/camera/ui/NoScrollViewPager;)V
    .locals 0

    return-void
.end method
