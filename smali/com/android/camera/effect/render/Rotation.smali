.class public final enum Lcom/android/camera/effect/render/Rotation;
.super Ljava/lang/Enum;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/effect/render/Rotation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/effect/render/Rotation;

.field public static final enum NORMAL:Lcom/android/camera/effect/render/Rotation;

.field public static final enum ROTATION_180:Lcom/android/camera/effect/render/Rotation;

.field public static final enum ROTATION_270:Lcom/android/camera/effect/render/Rotation;

.field public static final enum ROTATION_90:Lcom/android/camera/effect/render/Rotation;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/camera/effect/render/Rotation;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/effect/render/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/Rotation;->NORMAL:Lcom/android/camera/effect/render/Rotation;

    .line 2
    new-instance v0, Lcom/android/camera/effect/render/Rotation;

    const/4 v2, 0x1

    const-string v3, "ROTATION_90"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/effect/render/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/Rotation;->ROTATION_90:Lcom/android/camera/effect/render/Rotation;

    .line 3
    new-instance v0, Lcom/android/camera/effect/render/Rotation;

    const/4 v3, 0x2

    const-string v4, "ROTATION_180"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/effect/render/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/Rotation;->ROTATION_180:Lcom/android/camera/effect/render/Rotation;

    .line 4
    new-instance v0, Lcom/android/camera/effect/render/Rotation;

    const/4 v4, 0x3

    const-string v5, "ROTATION_270"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/effect/render/Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/effect/render/Rotation;->ROTATION_270:Lcom/android/camera/effect/render/Rotation;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/android/camera/effect/render/Rotation;

    .line 5
    sget-object v6, Lcom/android/camera/effect/render/Rotation;->NORMAL:Lcom/android/camera/effect/render/Rotation;

    aput-object v6, v5, v1

    sget-object v1, Lcom/android/camera/effect/render/Rotation;->ROTATION_90:Lcom/android/camera/effect/render/Rotation;

    aput-object v1, v5, v2

    sget-object v1, Lcom/android/camera/effect/render/Rotation;->ROTATION_180:Lcom/android/camera/effect/render/Rotation;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/android/camera/effect/render/Rotation;->$VALUES:[Lcom/android/camera/effect/render/Rotation;

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

.method public static fromInt(I)Lcom/android/camera/effect/render/Rotation;
    .locals 2

    if-eqz p0, :cond_4

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x168

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->NORMAL:Lcom/android/camera/effect/render/Rotation;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is an unknown rotation. Needs to be either 0, 90, 180 or 270!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->ROTATION_270:Lcom/android/camera/effect/render/Rotation;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->ROTATION_180:Lcom/android/camera/effect/render/Rotation;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->ROTATION_90:Lcom/android/camera/effect/render/Rotation;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/android/camera/effect/render/Rotation;->NORMAL:Lcom/android/camera/effect/render/Rotation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/effect/render/Rotation;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/effect/render/Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/effect/render/Rotation;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/effect/render/Rotation;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/effect/render/Rotation;->$VALUES:[Lcom/android/camera/effect/render/Rotation;

    invoke-virtual {v0}, [Lcom/android/camera/effect/render/Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/effect/render/Rotation;

    return-object v0
.end method


# virtual methods
.method public asInt()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/effect/render/Rotation$1;->$SwitchMap$com$android$camera$effect$render$Rotation:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10e

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown Rotation!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
