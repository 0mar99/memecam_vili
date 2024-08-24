.class public abstract Lcom/android/camera/module/entry/BaseModuleEntry;
.super Ljava/lang/Object;
.source "BaseModuleEntry.java"

# interfaces
.implements Lcom/android/camera/module/entry/IModuleEntry;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    :goto_0
    return-void
.end method


# virtual methods
.method public final createComponentDataItem([II)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOo0O()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0o0Oo()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x323b9f

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x5c13d641

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v1, "kino"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    .line 4
    aget v3, p1, v0

    goto :goto_2

    .line 5
    :cond_4
    aget v3, p1, v5

    .line 6
    :goto_2
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {p0}, Lcom/android/camera/module/entry/IModuleEntry;->getModuleId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v2

    iget-object p0, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    aget p1, p1, v4

    invoke-interface {v2, p0, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getModeDrawableRes(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v0, v1, p0, v3, p2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(Ljava/lang/String;III)V

    return-object v0

    .line 8
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid resource array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModeItem()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportIntentType()[I
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput v0, p0, v0

    return-object p0
.end method
