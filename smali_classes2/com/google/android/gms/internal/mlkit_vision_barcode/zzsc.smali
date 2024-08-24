.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/lang/String;

.field public final zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzb:Ljava/lang/String;

    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzc:Ljava/lang/String;

    const/4 v3, 0x3

    .line 4
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzd:Ljava/lang/String;

    const/4 v3, 0x4

    .line 5
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zze:Ljava/lang/String;

    const/4 v3, 0x5

    .line 6
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

    const/4 v3, 0x6

    .line 7
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

    const/4 v1, 0x7

    .line 8
    invoke-static {p1, v1, p0, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsb;

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzsc;->zza:Ljava/lang/String;

    return-object p0
.end method
