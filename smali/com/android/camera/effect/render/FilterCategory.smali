.class public final enum Lcom/android/camera/effect/render/FilterCategory;
.super Ljava/lang/Enum;
.source "FilterCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/effect/render/FilterCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum AI:Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum BEAUTY:Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum BEAUTY_INDIA:Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum CV_STYLE:Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum LIGHTING:Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum MAKEUP:Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum MI_LIVE:Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum NORMAL:Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum STICKER:Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum UNKNOWN:Lcom/android/camera/effect/render/FilterCategory;

.field public static final enum VIDEO:Lcom/android/camera/effect/render/FilterCategory;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->UNKNOWN:Lcom/android/camera/effect/render/FilterCategory;

    .line 2
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/4 v2, 0x1

    const-string v3, "AI"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->AI:Lcom/android/camera/effect/render/FilterCategory;

    .line 3
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/4 v3, 0x2

    const-string v4, "NORMAL"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->NORMAL:Lcom/android/camera/effect/render/FilterCategory;

    .line 4
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/4 v4, 0x3

    const-string v5, "BEAUTY"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->BEAUTY:Lcom/android/camera/effect/render/FilterCategory;

    .line 5
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/4 v5, 0x4

    const-string v6, "BEAUTY_INDIA"

    invoke-direct {v0, v6, v5}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->BEAUTY_INDIA:Lcom/android/camera/effect/render/FilterCategory;

    .line 6
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/4 v6, 0x5

    const-string v7, "MAKEUP"

    invoke-direct {v0, v7, v6}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->MAKEUP:Lcom/android/camera/effect/render/FilterCategory;

    .line 7
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/4 v7, 0x6

    const-string v8, "STICKER"

    invoke-direct {v0, v8, v7}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->STICKER:Lcom/android/camera/effect/render/FilterCategory;

    .line 8
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/4 v8, 0x7

    const-string v9, "LIGHTING"

    invoke-direct {v0, v9, v8}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->LIGHTING:Lcom/android/camera/effect/render/FilterCategory;

    .line 9
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/16 v9, 0x8

    const-string v10, "MI_LIVE"

    invoke-direct {v0, v10, v9}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->MI_LIVE:Lcom/android/camera/effect/render/FilterCategory;

    .line 10
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/16 v10, 0x9

    const-string v11, "VIDEO"

    invoke-direct {v0, v11, v10}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->VIDEO:Lcom/android/camera/effect/render/FilterCategory;

    .line 11
    new-instance v0, Lcom/android/camera/effect/render/FilterCategory;

    const/16 v11, 0xa

    const-string v12, "CV_STYLE"

    invoke-direct {v0, v12, v11}, Lcom/android/camera/effect/render/FilterCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/FilterCategory;->CV_STYLE:Lcom/android/camera/effect/render/FilterCategory;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/android/camera/effect/render/FilterCategory;

    .line 12
    sget-object v13, Lcom/android/camera/effect/render/FilterCategory;->UNKNOWN:Lcom/android/camera/effect/render/FilterCategory;

    aput-object v13, v12, v1

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->AI:Lcom/android/camera/effect/render/FilterCategory;

    aput-object v1, v12, v2

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->NORMAL:Lcom/android/camera/effect/render/FilterCategory;

    aput-object v1, v12, v3

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->BEAUTY:Lcom/android/camera/effect/render/FilterCategory;

    aput-object v1, v12, v4

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->BEAUTY_INDIA:Lcom/android/camera/effect/render/FilterCategory;

    aput-object v1, v12, v5

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->MAKEUP:Lcom/android/camera/effect/render/FilterCategory;

    aput-object v1, v12, v6

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->STICKER:Lcom/android/camera/effect/render/FilterCategory;

    aput-object v1, v12, v7

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->LIGHTING:Lcom/android/camera/effect/render/FilterCategory;

    aput-object v1, v12, v8

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->MI_LIVE:Lcom/android/camera/effect/render/FilterCategory;

    aput-object v1, v12, v9

    sget-object v1, Lcom/android/camera/effect/render/FilterCategory;->VIDEO:Lcom/android/camera/effect/render/FilterCategory;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/android/camera/effect/render/FilterCategory;->$VALUES:[Lcom/android/camera/effect/render/FilterCategory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/effect/render/FilterCategory;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/effect/render/FilterCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/render/FilterCategory;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/effect/render/FilterCategory;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/effect/render/FilterCategory;->$VALUES:[Lcom/android/camera/effect/render/FilterCategory;

    invoke-virtual {v0}, [Lcom/android/camera/effect/render/FilterCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/render/FilterCategory;

    return-object v0
.end method
