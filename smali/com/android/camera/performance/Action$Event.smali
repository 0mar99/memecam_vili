.class public final enum Lcom/android/camera/performance/Action$Event;
.super Ljava/lang/Enum;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/performance/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/performance/Action$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/camera/performance/Action$Event;

.field public static final enum COLD_LAUNCH:Lcom/android/camera/performance/Action$Event;

.field public static final enum CONTINUE_DROP_FRAME:Lcom/android/camera/performance/Action$Event;

.field public static final enum DROP_FRAME:Lcom/android/camera/performance/Action$Event;

.field public static final enum FRONT_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum FRONT_NIGHT_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum FRONT_NORMAL_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum FRONT_PORTRAIT_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum FRONT_START_RECORD:Lcom/android/camera/performance/Action$Event;

.field public static final enum FRONT_STOP_RECORD:Lcom/android/camera/performance/Action$Event;

.field public static final enum HOT_LAUNCH:Lcom/android/camera/performance/Action$Event;

.field public static final enum PREVIEW_PROCESS_TIMEOUT:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_5X_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_NIGHT_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_NORMAL_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_NORMAL_FLASH_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_NORMAL_NIGHT_SE_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_PORTRAIT_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_SR_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_START_RECORD:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_STOP_RECORD:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_UW_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum REAR_UW_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

.field public static final enum SAT_ALGO_TIMEOUT:Lcom/android/camera/performance/Action$Event;

.field public static final enum SLOW_MOTION_PROCESS:Lcom/android/camera/performance/Action$Event;

.field public static final enum SLOW_MOTION_SAVING:Lcom/android/camera/performance/Action$Event;

.field public static final enum SWITCH_LENS:Lcom/android/camera/performance/Action$Event;

.field public static final enum SWITCH_MODULE:Lcom/android/camera/performance/Action$Event;

.field public static final enum UNKNOWN:Lcom/android/camera/performance/Action$Event;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->UNKNOWN:Lcom/android/camera/performance/Action$Event;

    .line 2
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/4 v2, 0x1

    const-string v3, "REAR_NORMAL_CAPTURE"

    invoke-direct {v0, v3, v2}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_NORMAL_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 3
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/4 v3, 0x2

    const-string v4, "REAR_NORMAL_FLASH_CAPTURE"

    invoke-direct {v0, v4, v3}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_NORMAL_FLASH_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 4
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/4 v4, 0x3

    const-string v5, "REAR_NORMAL_NIGHT_SE_CAPTURE"

    invoke-direct {v0, v5, v4}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_NORMAL_NIGHT_SE_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 5
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/4 v5, 0x4

    const-string v6, "REAR_HDR_CAPTURE"

    invoke-direct {v0, v6, v5}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 6
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/4 v6, 0x5

    const-string v7, "REAR_PORTRAIT_CAPTURE"

    invoke-direct {v0, v7, v6}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_PORTRAIT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 7
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/4 v7, 0x6

    const-string v8, "REAR_NIGHT_CAPTURE"

    invoke-direct {v0, v8, v7}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_NIGHT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 8
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/4 v8, 0x7

    const-string v9, "REAR_UW_CAPTURE"

    invoke-direct {v0, v9, v8}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_UW_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 9
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v9, 0x8

    const-string v10, "REAR_UW_HDR_CAPTURE"

    invoke-direct {v0, v10, v9}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_UW_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 10
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v10, 0x9

    const-string v11, "REAR_5X_CAPTURE"

    invoke-direct {v0, v11, v10}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_5X_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 11
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v11, 0xa

    const-string v12, "REAR_SR_CAPTURE"

    invoke-direct {v0, v12, v11}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_SR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 12
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v12, 0xb

    const-string v13, "FRONT_NORMAL_CAPTURE"

    invoke-direct {v0, v13, v12}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->FRONT_NORMAL_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 13
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v13, 0xc

    const-string v14, "FRONT_HDR_CAPTURE"

    invoke-direct {v0, v14, v13}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->FRONT_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 14
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v14, 0xd

    const-string v15, "FRONT_PORTRAIT_CAPTURE"

    invoke-direct {v0, v15, v14}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->FRONT_PORTRAIT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 15
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v15, 0xe

    const-string v14, "FRONT_NIGHT_CAPTURE"

    invoke-direct {v0, v14, v15}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->FRONT_NIGHT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    .line 16
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v14, 0xf

    const-string v15, "SWITCH_LENS"

    invoke-direct {v0, v15, v14}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->SWITCH_LENS:Lcom/android/camera/performance/Action$Event;

    .line 17
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v15, 0x10

    const-string v14, "SWITCH_MODULE"

    invoke-direct {v0, v14, v15}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->SWITCH_MODULE:Lcom/android/camera/performance/Action$Event;

    .line 18
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v14, 0x11

    const-string v15, "REAR_START_RECORD"

    invoke-direct {v0, v15, v14}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_START_RECORD:Lcom/android/camera/performance/Action$Event;

    .line 19
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v15, 0x12

    const-string v14, "FRONT_START_RECORD"

    invoke-direct {v0, v14, v15}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->FRONT_START_RECORD:Lcom/android/camera/performance/Action$Event;

    .line 20
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v14, 0x13

    const-string v15, "REAR_STOP_RECORD"

    invoke-direct {v0, v15, v14}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->REAR_STOP_RECORD:Lcom/android/camera/performance/Action$Event;

    .line 21
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v15, 0x14

    const-string v14, "FRONT_STOP_RECORD"

    invoke-direct {v0, v14, v15}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->FRONT_STOP_RECORD:Lcom/android/camera/performance/Action$Event;

    .line 22
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const/16 v14, 0x15

    const-string v15, "COLD_LAUNCH"

    invoke-direct {v0, v15, v14}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->COLD_LAUNCH:Lcom/android/camera/performance/Action$Event;

    .line 23
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const-string v15, "HOT_LAUNCH"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->HOT_LAUNCH:Lcom/android/camera/performance/Action$Event;

    .line 24
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const-string v14, "SLOW_MOTION_SAVING"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->SLOW_MOTION_SAVING:Lcom/android/camera/performance/Action$Event;

    .line 25
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const-string v14, "DROP_FRAME"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->DROP_FRAME:Lcom/android/camera/performance/Action$Event;

    .line 26
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const-string v14, "CONTINUE_DROP_FRAME"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->CONTINUE_DROP_FRAME:Lcom/android/camera/performance/Action$Event;

    .line 27
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const-string v14, "SAT_ALGO_TIMEOUT"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->SAT_ALGO_TIMEOUT:Lcom/android/camera/performance/Action$Event;

    .line 28
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const-string v14, "PREVIEW_PROCESS_TIMEOUT"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->PREVIEW_PROCESS_TIMEOUT:Lcom/android/camera/performance/Action$Event;

    .line 29
    new-instance v0, Lcom/android/camera/performance/Action$Event;

    const-string v14, "SLOW_MOTION_PROCESS"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/android/camera/performance/Action$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/performance/Action$Event;->SLOW_MOTION_PROCESS:Lcom/android/camera/performance/Action$Event;

    const/16 v14, 0x1d

    new-array v14, v14, [Lcom/android/camera/performance/Action$Event;

    .line 30
    sget-object v15, Lcom/android/camera/performance/Action$Event;->UNKNOWN:Lcom/android/camera/performance/Action$Event;

    aput-object v15, v14, v1

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_NORMAL_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_NORMAL_FLASH_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v3

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_NORMAL_NIGHT_SE_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v4

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v5

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_PORTRAIT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v6

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_NIGHT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v7

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_UW_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v8

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_UW_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v9

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_5X_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v10

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_SR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v11

    sget-object v1, Lcom/android/camera/performance/Action$Event;->FRONT_NORMAL_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v12

    sget-object v1, Lcom/android/camera/performance/Action$Event;->FRONT_HDR_CAPTURE:Lcom/android/camera/performance/Action$Event;

    aput-object v1, v14, v13

    sget-object v1, Lcom/android/camera/performance/Action$Event;->FRONT_PORTRAIT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->FRONT_NIGHT_CAPTURE:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->SWITCH_LENS:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->SWITCH_MODULE:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_START_RECORD:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->FRONT_START_RECORD:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->REAR_STOP_RECORD:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->FRONT_STOP_RECORD:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->COLD_LAUNCH:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->HOT_LAUNCH:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->SLOW_MOTION_SAVING:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->DROP_FRAME:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->CONTINUE_DROP_FRAME:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->SAT_ALGO_TIMEOUT:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lcom/android/camera/performance/Action$Event;->PREVIEW_PROCESS_TIMEOUT:Lcom/android/camera/performance/Action$Event;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    const/16 v1, 0x1c

    aput-object v0, v14, v1

    sput-object v14, Lcom/android/camera/performance/Action$Event;->$VALUES:[Lcom/android/camera/performance/Action$Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/performance/Action$Event;
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/performance/Action$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/performance/Action$Event;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/performance/Action$Event;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/performance/Action$Event;->$VALUES:[Lcom/android/camera/performance/Action$Event;

    invoke-virtual {v0}, [Lcom/android/camera/performance/Action$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/performance/Action$Event;

    return-object v0
.end method
