.class public Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigSlowMotion.java"


# static fields
.field public static final DATA_CONFIG_NEW_SLOW_MOTION_120:Ljava/lang/String; = "slow_motion_120"

.field public static final DATA_CONFIG_NEW_SLOW_MOTION_1920:Ljava/lang/String; = "slow_motion_1920"

.field public static final DATA_CONFIG_NEW_SLOW_MOTION_240:Ljava/lang/String; = "slow_motion_240"

.field public static final DATA_CONFIG_NEW_SLOW_MOTION_3840:Ljava/lang/String; = "slow_motion_3840"

.field public static final DATA_CONFIG_NEW_SLOW_MOTION_480:Ljava/lang/String; = "slow_motion_480"

.field public static final DATA_CONFIG_NEW_SLOW_MOTION_480_DIRECT:Ljava/lang/String; = "slow_motion_480_direct"

.field public static final DATA_CONFIG_NEW_SLOW_MOTION_960:Ljava/lang/String; = "slow_motion_960"

.field public static final DATA_CONFIG_NEW_SLOW_MOTION_960_DIRECT:Ljava/lang/String; = "slow_motion_960_direct"

.field public static final SLOW_120_FPS:S = 0x78s

.field public static final SLOW_1920_FPS:S = 0x780s

.field public static final SLOW_240_FPS:S = 0xf0s

.field public static final SLOW_3840_FPS:S = 0xf00s

.field public static final SLOW_480_FPS:S = 0x1e0s

.field public static final SLOW_960_FPS:S = 0x3c0s

.field public static final SLOW_UNSUPPORT:S = 0x0s

.field public static final TAG:Ljava/lang/String; = "ComponentConfigSlowMotion"


# instance fields
.field public mCurrentQuality:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const-string p1, "5"

    .line 2
    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->mCurrentQuality:Ljava/lang/String;

    return-void
.end method

.method private getSupportMaxValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    if-nez v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "slow_motion_480_direct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "slow_motion_960"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "slow_motion_480"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "slow_motion_240"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "slow_motion_120"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "slow_motion_3840"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_6
    const-string/jumbo v0, "slow_motion_1920"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v0, "slow_motion_960_direct"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const v0, 0x7f120040

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const p1, 0x7f120599

    new-array v0, v2, [Ljava/lang/Object;

    const/16 v2, 0xf00

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-array p1, v2, [Ljava/lang/Object;

    const/16 v2, 0x780

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f12003d

    new-array v0, v2, [Ljava/lang/Object;

    const/16 v2, 0x3c0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-array p1, v2, [Ljava/lang/Object;

    const/16 v2, 0x1e0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f12003c

    new-array v0, v2, [Ljava/lang/Object;

    const/16 v2, 0xf0

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f12003b

    new-array v0, v2, [Ljava/lang/Object;

    const/16 v2, 0x78

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52d5e5a0 -> :sswitch_7
        -0x4d7933ef -> :sswitch_6
        -0x4d784eb4 -> :sswitch_5
        -0x44904cdc -> :sswitch_4
        -0x449048dd -> :sswitch_3
        -0x449040df -> :sswitch_2
        -0x44902e58 -> :sswitch_1
        0x1043c2c7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDefaultValue(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 2
    iget-object v0, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkValueValid: invalid value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ComponentConfigSlowMotion"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->checkValueValid(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    const-class p1, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset invalid value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getSupportMaxValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "slow_motion_120"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

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

    const-string p0, "key_new_slow_motion"

    return-object p0
.end method

.method public getValueSelectedStringIdIgnoreClose(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->isDefaultValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSlowMotionFps1920()Z
    .locals 1

    const/16 v0, 0xac

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "slow_motion_1920"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSlowMotionFps3840()Z
    .locals 1

    const/16 v0, 0xac

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "slow_motion_3840"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSlowMotionFps480()Z
    .locals 1

    const/16 v0, 0xac

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "slow_motion_480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSlowMotionFps960()Z
    .locals 1

    const/16 v0, 0xac

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "slow_motion_960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public reInit(IILcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;Lcom/android/camera2/CameraCapabilities;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0xac

    if-eq v1, v3, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/android/camera/CameraSettings;->getSupportedHfrSettings(Lcom/android/camera2/CameraCapabilities;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v4, p3

    .line 3
    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->mCurrentQuality:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    iget-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->mCurrentQuality:Ljava/lang/String;

    const-string v5, "5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "1280x720:"

    if-eqz v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->mCurrentQuality:Ljava/lang/String;

    const-string v6, "6"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v5, "1920x1080:"

    goto :goto_0

    .line 7
    :cond_2
    iget-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->mCurrentQuality:Ljava/lang/String;

    const-string v6, "8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v5, "3840x2160:"

    :cond_3
    :goto_0
    const/4 v4, 0x4

    const-string/jumbo v6, "slow_motion_120"

    const-string v8, "ComponentConfigSlowMotion"

    const/16 v9, 0x78

    const/4 v10, 0x0

    if-nez p2, :cond_e

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v11

    invoke-virtual {v11}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00000oO()S

    move-result v11

    .line 9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Rear Max FPS is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v8, v12}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-eq v11, v9, :cond_d

    const/16 v4, 0xf0

    const/16 v8, 0x1e0

    if-eq v11, v4, :cond_c

    const/16 v12, 0xf00

    const/16 v13, 0x780

    if-eq v11, v8, :cond_9

    const/16 v14, 0x3c0

    if-eq v11, v14, :cond_6

    if-eq v11, v13, :cond_5

    if-eq v11, v12, :cond_4

    goto/16 :goto_4

    .line 10
    :cond_4
    new-instance v15, Lcom/android/camera/data/data/ComponentDataItem;

    const v16, 0x7f0803d8

    .line 11
    invoke-static/range {v16 .. v16}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v7

    .line 12
    invoke-static/range {v16 .. v16}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v9

    const-string/jumbo v12, "slow_motion_3840"

    .line 13
    invoke-direct {v0, v12}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v7, v9, v4, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 15
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v15, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    .line 17
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-ne v11, v13, :cond_6

    .line 18
    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0803da

    .line 19
    invoke-static {v7}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v7

    const v9, 0x7f0803da

    .line 20
    invoke-static {v9}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v9

    const-string/jumbo v12, "slow_motion_1920"

    .line 21
    invoke-direct {v0, v12}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "slow_motion_1920"

    invoke-direct {v4, v7, v9, v12, v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 23
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    iput-boolean v7, v4, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    .line 25
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const v4, 0x7f0803dd

    if-eq v11, v13, :cond_8

    if-ne v11, v14, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    const/16 v7, 0xf00

    goto :goto_3

    .line 26
    :cond_8
    :goto_2
    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    .line 27
    invoke-static {v4}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v9

    .line 28
    invoke-static {v4}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v12

    const-string/jumbo v15, "slow_motion_960"

    .line 29
    invoke-direct {v0, v15}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v9, v12, v13, v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 31
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v9, 0xf0

    .line 32
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    iput-boolean v9, v7, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    .line 33
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :goto_3
    if-ne v11, v7, :cond_9

    .line 34
    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    .line 35
    invoke-static {v4}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v9

    .line 36
    invoke-static {v4}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v4

    const-string/jumbo v12, "slow_motion_960_direct"

    .line 37
    invoke-direct {v0, v12}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "slow_motion_960_direct"

    invoke-direct {v7, v9, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 39
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v7, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    .line 41
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const v4, 0x7f0803dc

    if-ne v11, v8, :cond_a

    .line 42
    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    .line 43
    invoke-static {v4}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v9

    .line 44
    invoke-static {v4}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v12

    const-string/jumbo v13, "slow_motion_480"

    .line 45
    invoke-direct {v0, v13}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v9, v12, v14, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 47
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v9, 0x78

    .line 48
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    iput-boolean v9, v7, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    .line 49
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v7, 0x780

    if-eq v11, v7, :cond_b

    const/16 v7, 0xf00

    if-ne v11, v7, :cond_c

    .line 50
    :cond_b
    new-instance v7, Lcom/android/camera/data/data/ComponentDataItem;

    .line 51
    invoke-static {v4}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v9

    .line 52
    invoke-static {v4}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v4

    const-string/jumbo v12, "slow_motion_480_direct"

    .line 53
    invoke-direct {v0, v12}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "slow_motion_480_direct"

    invoke-direct {v7, v9, v4, v12, v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 55
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v7, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    .line 57
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eq v11, v8, :cond_d

    .line 58
    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0803db

    .line 59
    invoke-static {v7}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v8

    .line 60
    invoke-static {v7}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v7

    const-string/jumbo v9, "slow_motion_240"

    .line 61
    invoke-direct {v0, v9}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v8, v7, v11, v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v7, 0xf0

    .line 64
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    iput-boolean v7, v4, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    .line 65
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_d
    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0803d9

    .line 67
    invoke-static {v7}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v8

    .line 68
    invoke-static {v7}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v7

    .line 69
    invoke-direct {v0, v6}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v7, v9, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 71
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x78

    .line 72
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v4, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    .line 73
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_4
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_5

    .line 75
    :cond_e
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v7

    invoke-virtual {v7}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->Oooooo0()S

    move-result v7

    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Front Max FPS is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    if-eqz v7, :cond_10

    const/16 v9, 0x78

    if-eq v7, v9, :cond_f

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please check Product Design, font only support 120FPS, current is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v8, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 78
    :cond_f
    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f0803d9

    .line 79
    invoke-static {v7}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v8

    .line 80
    invoke-static {v7}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOverlayResBySuffix(I)I

    move-result v7

    .line 81
    invoke-direct {v0, v6}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->getValueSelectedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v7, v9, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 83
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x78

    .line 84
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v4, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    .line 85
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    const-string v1, "Font camera do not support slow motion"

    .line 86
    invoke-static {v4, v8, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_5
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method
