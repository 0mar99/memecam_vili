.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzli;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@18.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzbm;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzb:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzc:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzd:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zze:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzf:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzg:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzh:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzi:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzj:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzk:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzl:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final enum zzm:Lcom/google/android/gms/internal/mlkit_common/zzli;

.field public static final synthetic zzn:[Lcom/google/android/gms/internal/mlkit_common/zzli;


# instance fields
.field public final zzo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_STATUS"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zza:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/4 v2, 0x1

    const-string v3, "EXPLICITLY_REQUESTED"

    .line 2
    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/4 v3, 0x2

    const-string v4, "IMPLICITLY_REQUESTED"

    .line 3
    invoke-direct {v0, v4, v3, v3}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/4 v4, 0x3

    const-string v5, "MODEL_INFO_RETRIEVAL_SUCCEEDED"

    .line 4
    invoke-direct {v0, v5, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/4 v5, 0x4

    const-string v6, "MODEL_INFO_RETRIEVAL_FAILED"

    .line 5
    invoke-direct {v0, v6, v5, v5}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zze:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/4 v6, 0x5

    const-string v7, "SCHEDULED"

    .line 6
    invoke-direct {v0, v7, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/4 v7, 0x6

    const-string v8, "DOWNLOADING"

    .line 7
    invoke-direct {v0, v8, v7, v7}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/4 v8, 0x7

    const-string v9, "SUCCEEDED"

    .line 8
    invoke-direct {v0, v9, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/16 v9, 0x8

    const-string v10, "FAILED"

    .line 9
    invoke-direct {v0, v10, v9, v9}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/16 v10, 0x9

    const-string v11, "LIVE"

    .line 10
    invoke-direct {v0, v11, v10, v10}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzj:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/16 v11, 0xa

    const-string v12, "UPDATE_AVAILABLE"

    .line 11
    invoke-direct {v0, v12, v11, v11}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzk:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/16 v12, 0xb

    const-string v13, "DOWNLOADED"

    .line 12
    invoke-direct {v0, v13, v12, v12}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzl:Lcom/google/android/gms/internal/mlkit_common/zzli;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/16 v13, 0xc

    const-string v14, "STARTED"

    .line 13
    invoke-direct {v0, v14, v13, v13}, Lcom/google/android/gms/internal/mlkit_common/zzli;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzm:Lcom/google/android/gms/internal/mlkit_common/zzli;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/google/android/gms/internal/mlkit_common/zzli;

    sget-object v15, Lcom/google/android/gms/internal/mlkit_common/zzli;->zza:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v15, v14, v1

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v2

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzd:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v4

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zze:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v5

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzf:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v6

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzg:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v7

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzh:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v8

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzi:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v9

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzj:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v10

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzk:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v11

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzl:Lcom/google/android/gms/internal/mlkit_common/zzli;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzn:[Lcom/google/android/gms/internal/mlkit_common/zzli;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzo:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzli;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzn:[Lcom/google/android/gms/internal/mlkit_common/zzli;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzli;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzli;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzli;->zzo:I

    return p0
.end method
