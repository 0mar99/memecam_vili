.class public LOooO0O0/OooO0Oo/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final OooO:Z

.field public static final OooO00o:Ljava/lang/String;

.field public static final OooO0O0:Z

.field public static final OooO0OO:Z

.field public static final OooO0Oo:Z

.field public static final OooO0o:Z

.field public static final OooO0o0:Ljava/lang/String; = "^((V|OS)\\d{1,})(\\.\\d{1,})*(\\.([A-Z]{4,}))$"

.field public static final OooO0oO:Ljava/lang/String; = "\\d+.\\d+.\\d+(-internal)?"

.field public static final OooO0oo:Z

.field public static final OooOO0:Z

.field public static final OooOO0O:Z

.field public static final OooOO0o:Ljava/lang/String;

.field public static final OooOOO:Ljava/lang/String; = "mediatek"

.field public static final OooOOO0:Ljava/lang/String; = "qcom"

.field public static final OooOOOO:Ljava/lang/String;

.field public static final OooOOOo:Ljava/lang/String;

.field public static final OooOOo:Z

.field public static final OooOOo0:Z

.field public static final OooOOoo:Z

.field public static final OooOo:Z

.field public static final OooOo0:Z

.field public static final OooOo00:Z

.field public static final OooOo0O:Z

.field public static final OooOo0o:Z

.field public static final OooOoO:Z

.field public static final OooOoO0:Z

.field public static final OooOoOO:Z

.field public static final OooOoo:Z

.field public static final OooOoo0:Z

.field public static final OooOooO:Z

.field public static final OooOooo:Z

.field public static final Oooo:Z

.field public static final Oooo0:Z

.field public static final Oooo000:Z

.field public static final Oooo00O:Z

.field public static final Oooo00o:Z

.field public static final Oooo0O0:Z

.field public static final Oooo0OO:Z

.field public static final Oooo0o:Z

.field public static final Oooo0o0:Z

.field public static final Oooo0oO:Z

.field public static final Oooo0oo:Z

.field public static final OoooO:Z

.field public static final OoooO0:Z

.field public static final OoooO00:Z

.field public static final OoooO0O:Z

.field public static final OoooOO0:Z

.field public static final OoooOOO:Z

.field public static final o000oOoO:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.debuggable"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:Z

    const-string/jumbo v1, "ro.build.characteristics"

    .line 3
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "tablet"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0OO:Z

    const/4 v1, 0x0

    const-string/jumbo v3, "ro.mi.os.version.name"

    .line 4
    invoke-static {v3, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ro.miui.ui.version.name"

    invoke-static {v3, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo:Z

    .line 5
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "^((V|OS)\\d{1,})(\\.\\d{1,})*(\\.([A-Z]{4,}))$"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o:Z

    .line 7
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "\\d+.\\d+.\\d+(-internal)?"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0oo:Z

    .line 9
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v0

    :goto_4
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO:Z

    const-string/jumbo v1, "ro.cust.test"

    .line 10
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOO0:Z

    const-string/jumbo v1, "ro.carrier.name"

    .line 11
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "ro.miui.cust_variant"

    .line 12
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cn_chinamobile"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 13
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cn_cta"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v1, v2

    goto :goto_5

    :cond_6
    move v1, v0

    :goto_5
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOO0O:Z

    const-string/jumbo v1, "ro.miui.build.region"

    const-string v3, "cn"

    .line 14
    invoke-static {v1, v3}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOO0o:Ljava/lang/String;

    .line 15
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOOO:Ljava/lang/String;

    const-string/jumbo v3, "ro.product.marketname"

    .line 16
    invoke-static {v3, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOOo:Ljava/lang/String;

    .line 17
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "ginkgo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0:Z

    .line 18
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "tucana"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    .line 19
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "umi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOoo:Z

    .line 20
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "thyme"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo00:Z

    .line 21
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "cmi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo0:Z

    .line 22
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "cas"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo0O:Z

    .line 23
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "atom"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "apricot"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v1, v0

    goto :goto_7

    :cond_8
    :goto_6
    move v1, v2

    :goto_7
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo0o:Z

    .line 24
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "bomb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "banana"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move v1, v0

    goto :goto_9

    :cond_a
    :goto_8
    move v1, v2

    :goto_9
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo:Z

    .line 25
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "lmi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "lmiin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    move v1, v0

    goto :goto_b

    :cond_c
    :goto_a
    move v1, v2

    :goto_b
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoO0:Z

    .line 26
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "lmipro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "lmiinpro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_c

    :cond_d
    move v1, v0

    goto :goto_d

    :cond_e
    :goto_c
    move v1, v2

    :goto_d
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoO:Z

    .line 27
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "picasso"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoOO:Z

    .line 28
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "gauguin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "gauguinpro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "gauguininpro"

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_e

    :cond_f
    move v1, v0

    goto :goto_f

    :cond_10
    :goto_e
    move v1, v2

    :goto_f
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoo0:Z

    .line 30
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "cezanne"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoo:Z

    .line 31
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "curtana"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "durandal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "excalibur"

    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "joyeuse"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "gram"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_10

    :cond_11
    move v1, v0

    goto :goto_11

    :cond_12
    :goto_10
    move v1, v2

    :goto_11
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOooO:Z

    .line 33
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "dandelion"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOooo:Z

    .line 34
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "angelica"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "angelican"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "angelicain"

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "cattail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_12

    :cond_13
    move v1, v0

    goto :goto_13

    :cond_14
    :goto_12
    move v1, v2

    :goto_13
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo000:Z

    const-string/jumbo v1, "ro.boot.product.hardware.sku"

    .line 36
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "galahad"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo00O:Z

    .line 37
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "star"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo00o:Z

    .line 38
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "mars"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0:Z

    .line 39
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "vili"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0O0:Z

    .line 40
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "cetus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0OO:Z

    .line 41
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "zizhan"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0o0:Z

    .line 42
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "haydn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "haydnin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_14

    :cond_15
    move v1, v0

    goto :goto_15

    :cond_16
    :goto_14
    move v1, v2

    :goto_15
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0o:Z

    .line 43
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "courbet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "courbetin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_16

    :cond_17
    move v1, v0

    goto :goto_17

    :cond_18
    :goto_16
    move v1, v2

    :goto_17
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0oO:Z

    .line 44
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "sweet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "sweetin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "sweetin_pro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "sweet_pro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_18

    :cond_19
    move v1, v0

    goto :goto_19

    :cond_1a
    :goto_18
    move v1, v2

    :goto_19
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0oo:Z

    .line 45
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v3, "vayu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "bhima"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1a

    :cond_1b
    move v1, v0

    goto :goto_1b

    :cond_1c
    :goto_1a
    move v1, v2

    :goto_1b
    sput-boolean v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo:Z

    .line 46
    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "enuma"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "elish"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    move v0, v2

    :cond_1e
    sput-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OoooO00:Z

    .line 47
    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v1, "lisa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OoooO0:Z

    .line 48
    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v1, "mona"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OoooO0O:Z

    .line 49
    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v1, "psyche"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OoooO:Z

    .line 50
    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v1, "munch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OoooOO0:Z

    .line 51
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o000oOoO:Z

    .line 52
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OoooOOO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO()Z
    .locals 3

    const-string/jumbo v0, "ro.boot.hwc"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "india"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "in"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "india_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 5
    :cond_2
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo00o:Z

    if-nez v0, :cond_3

    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OoooO0:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOO0O()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static OooO00o()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.miui.region"

    const-string v1, "CN"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OooO0O0()Z
    .locals 2

    .line 1
    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOO0o:Ljava/lang/String;

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooO0OO()Z
    .locals 3

    const-string/jumbo v0, "ro.boot.hwc"

    .line 1
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "china_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v1, "cn"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooO0Oo()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoOO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "ro.product.name"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasso_48m"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooO0o()Z
    .locals 2

    const-string/jumbo v0, "ro.product.mod_device"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static OooO0o0()Z
    .locals 6

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoOO:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const-string v2, "3.9.3"

    const-string v3, "3.9.5"

    .line 2
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.boot.hwversion"

    .line 3
    invoke-static {v3}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    .line 4
    aget-object v5, v2, v4

    .line 5
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static OooO0oO()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooO0oo()Z
    .locals 2

    .line 1
    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOO0o:Ljava/lang/String;

    const-string v1, "in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooOO0()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOooO:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.boot.hwc"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOO0O()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooOO0o()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoO0:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoO:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static OooOOO()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOo0O:Z

    return v0
.end method

.method public static OooOOO0()Z
    .locals 3

    .line 1
    sget-object v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string/jumbo v1, "shiva"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ro.boot.hwversion"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2615.39.1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static OooOOOO()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "curtana_in1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOOOo()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "03"

    const-string v1, "persist.vendor.camera.rearMain.vendorID"

    .line 2
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static OooOOo()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOOo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOOo0()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o000oOoO:Z

    return v0
.end method

.method public static OooOOoo()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OoooOOO:Z

    return v0
.end method

.method public static OooOo00()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "mt[0-9]*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mediatek"

    return-object v0

    :cond_1
    return-object v1
.end method
