.class public Lcom/android/camera/data/data/config/ComponentConfigHdr;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigHdr.java"


# static fields
.field public static final HDR_UI_STATUS_AUTO:I = 0x2

.field public static final HDR_UI_STATUS_OFF:I = 0x0

.field public static final HDR_UI_STATUS_ON:I = 0x1

.field public static final HDR_VALUE_AUTO:Ljava/lang/String; = "auto"

.field public static final HDR_VALUE_LIVE:Ljava/lang/String; = "live"

.field public static final HDR_VALUE_NORMAL:Ljava/lang/String; = "normal"

.field public static final HDR_VALUE_OFF:Ljava/lang/String; = "off"

.field public static final HDR_VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field public mAutoSupported:Z

.field public mBokehHdrSupported:Z

.field public mEnableHdrAnim:Z

.field public mIsClosed:Z

.field public mNeedExpand:Z

.field public mSupportHdrCheckerWhenOn:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method private getConfigHDRAutoRes()[I
    .locals 0

    const/4 p0, 0x3

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0803bb
        0x7f0803bb
        0x7f0803bc
    .end array-data
.end method

.method private getConfigHDRLiveRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0803bf
        0x7f0803bf
    .end array-data
.end method

.method private getConfigHDRNormalRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0803c0
        0x7f0803c0
    .end array-data
.end method

.method private getConfigHDROffRes()[I
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 1
    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f0803c2
        0x7f0803c2
    .end array-data
.end method

.method public static getHdrUIStatus(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "on"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "normal"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private initForHDR(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;",
            "Lcom/android/camera2/CameraCapabilities;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1
    new-instance v9, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDROffRes()[I

    move-result-object v3

    const/4 v10, 0x0

    aget v4, v3, v10

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDROffRes()[I

    move-result-object v3

    aget v6, v3, v10

    const v5, 0x7f0803c2

    const v7, 0x7f120720

    const-string/jumbo v8, "off"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 3
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAutoHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 5
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mAutoSupported:Z

    .line 6
    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRAutoRes()[I

    move-result-object v5

    aget v12, v5, v10

    const v13, 0x7f0803bb

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRAutoRes()[I

    move-result-object v5

    aget v14, v5, v10

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRAutoRes()[I

    move-result-object v5

    aget v15, v5, v10

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRAutoRes()[I

    move-result-object v5

    const/4 v6, 0x2

    aget v16, v5, v6

    const v17, 0x7f0803bc

    const v18, 0x7f12071d

    const-string v19, "auto"

    move-object v11, v3

    invoke-direct/range {v11 .. v19}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIIIILjava/lang/String;)V

    .line 10
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O00o()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa3

    if-eq v2, v3, :cond_2

    const/16 v3, 0xcd

    if-eq v2, v3, :cond_2

    .line 12
    :cond_1
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRNormalRes()[I

    move-result-object v3

    aget v12, v3, v10

    const v13, 0x7f0803c0

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRNormalRes()[I

    move-result-object v3

    aget v14, v3, v10

    const v15, 0x7f120877

    const-string/jumbo v16, "normal"

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdrCheckerStatus(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mSupportHdrCheckerWhenOn:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public clearClosed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Z

    return-void
.end method

.method public enableHdrAnim(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getAnimId(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mEnableHdrAnim:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mEnableHdrAnim:Z

    :goto_0
    return-void
.end method

.method public getAnimId(Ljava/lang/String;)I
    .locals 0

    const-string/jumbo p0, "off"

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getHdrHaloOffAnim()I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getHdrOffAnim()I

    move-result p0

    return p0

    :cond_1
    const-string/jumbo p0, "normal"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getHdrVideoOnAnim()I

    move-result p0

    return p0

    :cond_2
    const-string p0, "auto"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 8
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getHdrHaloOnAnim()I

    move-result p0

    return p0

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopInterface;->getHdrOnAnim()I

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed()Z

    move-result v0

    const-string/jumbo v1, "off"

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isSupportBokehHDR()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "auto"

    return-object p0

    .line 4
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed()Z

    move-result v0

    const-string/jumbo v1, "off"

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    const-string v2, "auto"

    if-eqz v0, :cond_4

    const/16 p0, 0xa2

    if-ne p0, p1, :cond_2

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OoO00O()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "normal"

    return-object p0

    :cond_2
    const/16 p0, 0xa3

    if-ne p0, p1, :cond_3

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o0O0()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v2

    :cond_3
    return-object v1

    .line 6
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isSupportBokehHDR()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v2

    .line 7
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OoOo0()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xddf

    const-string/jumbo v5, "on"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v4, :cond_8

    const v4, 0x1ad6f

    if-eq v3, v4, :cond_7

    const v4, 0x2dddaf

    if-eq v3, v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v0, v6

    goto :goto_0

    :cond_8
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    move v0, v7

    :cond_9
    :goto_0
    if-eqz v0, :cond_c

    if-eq v0, v7, :cond_b

    if-eq v0, v6, :cond_a

    goto :goto_1

    :cond_a
    return-object v1

    :cond_b
    return-object v5

    .line 10
    :cond_c
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mAutoSupported:Z

    if-eqz p0, :cond_d

    move-object v1, v2

    :cond_d
    return-object v1

    .line 11
    :cond_e
    :goto_1
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mAutoSupported:Z

    if-eqz p0, :cond_f

    return-object v2

    :cond_f
    return-object v1
.end method

.method public getDisplayTitleString()I
    .locals 0

    const p0, 0x7f120721

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa0

    if-eq p1, p0, :cond_4

    const/16 p0, 0xa2

    if-eq p1, p0, :cond_3

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_2

    const/16 p0, 0xab

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "pref_camera_hdr_key"

    return-object p0

    :cond_0
    const-string/jumbo p0, "pref_pro_video_hdr_key"

    return-object p0

    :cond_1
    const-string/jumbo p0, "pref_portrait_hdr_key"

    return-object p0

    :cond_2
    const-string/jumbo p0, "pref_fast_motion_hdr_key"

    return-object p0

    :cond_3
    const-string/jumbo p0, "pref_video_hdr_key"

    return-object p0

    .line 1
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unspecified hdr"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPersistValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "off"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDROffRes()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_0
    const-string v0, "auto"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRAutoRes()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_1
    const-string/jumbo v0, "normal"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRNormalRes()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_2
    const-string v0, "live"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRLiveRes()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_3
    const-string/jumbo v0, "on"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRNormalRes()[I

    move-result-object p0

    aget p0, p0, v1

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedShadowDrawable(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "off"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f0803c2

    return p0

    :cond_0
    const-string v0, "auto"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f0803bb

    return p0

    :cond_1
    const-string/jumbo v0, "normal"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0803c0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "live"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRLiveRes()[I

    move-result-object p0

    const/4 p1, 0x1

    aget p0, p0, p1

    return p0

    :cond_3
    const-string/jumbo p0, "on"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "off"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p0, 0x7f120073

    return p0

    :cond_0
    const-string p1, "auto"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p0, 0x7f120070

    return p0

    :cond_1
    const-string/jumbo p1, "normal"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f120074

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const-string p1, "live"

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p0, 0x7f120071

    return p0

    :cond_3
    const-string/jumbo p1, "on"

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public isClosed()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Z

    return p0
.end method

.method public isContainCurrentModeHdrKey(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/DataItemBase;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isHdrOnWithChecker(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "on"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "normal"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mSupportHdrCheckerWhenOn:Z

    return p0
.end method

.method public isNeenExpand()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mNeedExpand:Z

    return p0
.end method

.method public isShowHdrAnim()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mEnableHdrAnim:Z

    return p0
.end method

.method public isSupportAutoHdr()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mAutoSupported:Z

    return p0
.end method

.method public isSupportBokehHDR()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mBokehHdrSupported:Z

    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 2
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mAutoSupported:Z

    .line 3
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mSupportHdrCheckerWhenOn:Z

    .line 4
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mBokehHdrSupported:Z

    .line 5
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/16 v5, 0xa2

    const/4 v6, 0x1

    if-eq v1, v5, :cond_8

    const/16 v5, 0xa3

    if-eq v1, v5, :cond_6

    const/16 v5, 0xab

    if-eq v1, v5, :cond_2

    const/16 v5, 0xb4

    if-eq v1, v5, :cond_1

    const/16 v5, 0xcd

    if-eq v1, v5, :cond_6

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-direct {v0, v3, v2, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForHDR(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;I)V

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oO0o()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFrontBokehHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9
    :cond_4
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDROffRes()[I

    move-result-object v5

    aget v8, v5, v4

    const v9, 0x7f0803c2

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDROffRes()[I

    move-result-object v5

    aget v10, v5, v4

    const v11, 0x7f120720

    const-string/jumbo v12, "off"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 11
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAutoHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    iput-boolean v6, v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mAutoSupported:Z

    .line 14
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRAutoRes()[I

    move-result-object v2

    aget v8, v2, v4

    const v9, 0x7f0803bb

    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRAutoRes()[I

    move-result-object v2

    aget v10, v2, v4

    const v11, 0x7f12071d

    const-string v12, "auto"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 16
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    iput-boolean v6, v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mBokehHdrSupported:Z

    goto :goto_0

    .line 18
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz p4, :cond_7

    goto :goto_0

    .line 19
    :cond_7
    invoke-direct {v0, v3, v2, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForHDR(Ljava/util/List;Lcom/android/camera2/CameraCapabilities;I)V

    goto :goto_0

    .line 20
    :cond_8
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDROffRes()[I

    move-result-object v2

    aget v8, v2, v4

    const v9, 0x7f0803c2

    .line 22
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDROffRes()[I

    move-result-object v2

    aget v10, v2, v4

    const v11, 0x7f120720

    const-string/jumbo v12, "off"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 23
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRNormalRes()[I

    move-result-object v2

    aget v14, v2, v4

    const v15, 0x7f0803c0

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getConfigHDRNormalRes()[I

    move-result-object v2

    aget v16, v2, v4

    const v17, 0x7f120877

    const-string/jumbo v18, "normal"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 26
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_9
    :goto_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 28
    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_a

    move v4, v6

    :cond_a
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mNeedExpand:Z

    return-void
.end method

.method public resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 0

    .line 1
    invoke-interface {p2, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method

.method public resetToDefault(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(Z)V

    const/16 v0, 0xa3

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const/16 v0, 0xa2

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const/16 v0, 0xab

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Z

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(Z)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public setEnableHdrAnim(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mEnableHdrAnim:Z

    return-void
.end method
