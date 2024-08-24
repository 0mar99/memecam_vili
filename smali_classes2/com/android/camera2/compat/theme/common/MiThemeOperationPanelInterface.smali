.class public interface abstract Lcom/android/camera2/compat/theme/common/MiThemeOperationPanelInterface;
.super Ljava/lang/Object;
.source "MiThemeOperationPanelInterface.java"


# virtual methods
.method public abstract LightingOutRectPosition(Landroid/content/Context;Landroid/graphics/Rect;IIZI)V
.end method

.method public abstract MimojiOutRectPosition(Landroid/content/Context;Landroid/graphics/Rect;IIIZI)V
.end method

.method public abstract WaterMarkOutRectPosition(Landroid/content/Context;Landroid/graphics/Rect;IIIZI)V
.end method

.method public applyIndicatorButton(Landroid/widget/ImageView;I)V
    .locals 0

    return-void
.end method

.method public abstract correctionSelectView(Landroid/view/View;Z)V
.end method

.method public abstract getAmbilightLayout()I
.end method

.method public abstract getAmbilightPanelLayout()I
.end method

.method public abstract getBeautyFxMakeupString(I)I
.end method

.method public abstract getBeautyMoPrString(I)I
.end method

.method public abstract getBeautySmTextureString(I)I
.end method

.method public abstract getCalculateLP(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract getDownLoadFinishResource()I
.end method

.method public abstract getDownLoadImageResource()I
.end method

.method public abstract getEffectFilterItemSelectorLayout()I
.end method

.method public abstract getEffectItemAdapter(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;Z)Lcom/android/camera/fragment/EffectItemAdapter;
.end method

.method public abstract getEffectItemPadding(Landroid/content/Context;)Lcom/android/camera/fragment/EffectItemPadding;
.end method

.method public abstract getMakeUpAndFilterPanelMarginBottom(Landroid/content/Context;I)I
.end method

.method public abstract getMakeupSingleCheckAdapter(Landroid/content/Context;Ljava/util/List;II)Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;
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
.end method

.method public abstract getMimojiAvatarAdapter(Landroid/content/Context;)Lcom/android/camera/features/mimojis/commen/fragment/bottomlist/adapter/MimojiAvatarAdapter;
.end method

.method public abstract getMimojiBgLayout()I
.end method

.method public abstract getMimojiBgView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract getMimojiBottomList()I
.end method

.method public abstract getMimojiSelectedItemBgColor(I)I
.end method

.method public abstract getMimojiTimbreView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract getModeDrawableRes(Landroid/content/Context;I)I
.end method

.method public abstract getMomojiTimbreLayout()I
.end method

.method public abstract getNormalRoundViewColor()I
.end method

.method public abstract getPanelAnimate()Lmiuix/animation/base/AnimConfig;
.end method

.method public abstract getPanelMarginStart(Landroid/content/Context;)I
.end method

.method public abstract getPanelpadding(Landroid/content/Context;)I
.end method

.method public abstract getVVAndFilmGalleryItemLayout()I
.end method

.method public abstract getVVAndFilmGalleryItemLayoutId()I
.end method

.method public abstract getVVGalleryPanelLayout()I
.end method

.method public abstract getWarterRecyclerviewItemLayout()I
.end method

.method public abstract setMimojiBgColor(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
.end method

.method public abstract setMimojiTimbreColor(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
.end method

.method public abstract setWatermarkMarginBottom(Landroid/content/Context;Lcom/android/camera/ui/NoScrollViewPager;)V
.end method
