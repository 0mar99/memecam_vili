.class public final enum Lcom/android/camera/module/pano/PanoramaModule$PanoState;
.super Ljava/lang/Enum;
.source "PanoramaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/pano/PanoramaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/module/pano/PanoramaModule$PanoState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/module/pano/PanoramaModule$PanoState;

.field public static final enum DECIDE_DIR:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

.field public static final enum INIT:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

.field public static final enum PREVIEW:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

.field public static final enum SHOOTING:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

.field public static final enum STOP:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

.field public static final enum WAITING_STOP:Lcom/android/camera/module/pano/PanoramaModule$PanoState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    const/4 v1, 0x0

    const-string v2, "PREVIEW"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/module/pano/PanoramaModule$PanoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->PREVIEW:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    .line 2
    new-instance v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    const/4 v2, 0x1

    const-string v3, "INIT"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/module/pano/PanoramaModule$PanoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->INIT:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    .line 3
    new-instance v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    const/4 v3, 0x2

    const-string v4, "DECIDE_DIR"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/module/pano/PanoramaModule$PanoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->DECIDE_DIR:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    .line 4
    new-instance v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    const/4 v4, 0x3

    const-string v5, "SHOOTING"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/module/pano/PanoramaModule$PanoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->SHOOTING:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    .line 5
    new-instance v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    const/4 v5, 0x4

    const-string v6, "WAITING_STOP"

    invoke-direct {v0, v6, v5}, Lcom/android/camera/module/pano/PanoramaModule$PanoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->WAITING_STOP:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    .line 6
    new-instance v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    const/4 v6, 0x5

    const-string v7, "STOP"

    invoke-direct {v0, v7, v6}, Lcom/android/camera/module/pano/PanoramaModule$PanoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->STOP:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    .line 7
    sget-object v8, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->PREVIEW:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    aput-object v8, v7, v1

    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->INIT:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    aput-object v1, v7, v2

    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->DECIDE_DIR:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    aput-object v1, v7, v3

    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->SHOOTING:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    aput-object v1, v7, v4

    sget-object v1, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->WAITING_STOP:Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->$VALUES:[Lcom/android/camera/module/pano/PanoramaModule$PanoState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/module/pano/PanoramaModule$PanoState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/module/pano/PanoramaModule$PanoState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/pano/PanoramaModule$PanoState;->$VALUES:[Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    invoke-virtual {v0}, [Lcom/android/camera/module/pano/PanoramaModule$PanoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/module/pano/PanoramaModule$PanoState;

    return-object v0
.end method
