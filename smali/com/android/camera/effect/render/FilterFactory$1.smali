.class public synthetic Lcom/android/camera/effect/render/FilterFactory$1;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/render/FilterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$camera$effect$render$FilterCategory:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/effect/render/FilterCategory;->values()[Lcom/android/camera/effect/render/FilterCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/effect/render/FilterFactory$1;->$SwitchMap$com$android$camera$effect$render$FilterCategory:[I

    :try_start_0
    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->AI:Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/camera/effect/render/FilterFactory$1;->$SwitchMap$com$android$camera$effect$render$FilterCategory:[I

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->LIGHTING:Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/camera/effect/render/FilterFactory$1;->$SwitchMap$com$android$camera$effect$render$FilterCategory:[I

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->NORMAL:Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/camera/effect/render/FilterFactory$1;->$SwitchMap$com$android$camera$effect$render$FilterCategory:[I

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->BEAUTY:Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/camera/effect/render/FilterFactory$1;->$SwitchMap$com$android$camera$effect$render$FilterCategory:[I

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->BEAUTY_INDIA:Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/android/camera/effect/render/FilterFactory$1;->$SwitchMap$com$android$camera$effect$render$FilterCategory:[I

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->MAKEUP:Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/camera/effect/render/FilterFactory$1;->$SwitchMap$com$android$camera$effect$render$FilterCategory:[I

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->STICKER:Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/camera/effect/render/FilterFactory$1;->$SwitchMap$com$android$camera$effect$render$FilterCategory:[I

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->MI_LIVE:Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/android/camera/effect/render/FilterFactory$1;->$SwitchMap$com$android$camera$effect$render$FilterCategory:[I

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->VIDEO:Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/android/camera/effect/render/FilterFactory$1;->$SwitchMap$com$android$camera$effect$render$FilterCategory:[I

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->CV_STYLE:Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
