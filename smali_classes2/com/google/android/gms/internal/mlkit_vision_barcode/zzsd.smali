.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

.field public final zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

.field public final zzf:[Ljava/lang/String;

.field public final zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzss;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzss;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzf:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzb:Ljava/lang/String;

    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzc:Ljava/lang/String;

    const/4 v3, 0x3

    .line 4
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    const/4 v3, 0x4

    .line 5
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    const/4 v3, 0x5

    .line 6
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzf:[Ljava/lang/String;

    const/4 v3, 0x6

    .line 7
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;

    const/4 v1, 0x7

    .line 8
    invoke-static {p1, v1, p0, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsh;

    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsa;

    return-object p0
.end method

.method public final zze()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsf;

    return-object p0
.end method

.method public final zzf()[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsi;

    return-object p0
.end method

.method public final zzg()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsd;->zzf:[Ljava/lang/String;

    return-object p0
.end method
