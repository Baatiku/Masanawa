.class public final Lteam/opay/pay/kyc/KycDocumentUploadView$a;
.super Ljava/lang/Object;
.source "KycDocumentUploadView.kt"

# interfaces
.implements Lmka;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/pay/kyc/KycDocumentUploadView;->u(Landroid/content/ContentResolver;ILandroid/content/Intent;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "team/opay/pay/kyc/KycDocumentUploadView$a",
        "Lmka;",
        "Ljava/io/File;",
        "file",
        "",
        "a",
        "(Ljava/io/File;)V",
        "",
        "e",
        "onError",
        "(Ljava/lang/Throwable;)V",
        "onStart",
        "()V",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/pay/kyc/KycDocumentUploadView;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lteam/opay/pay/kyc/KycDocumentUploadView;Lkotlin/jvm/functions/Function1;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/kyc/KycDocumentUploadView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/kyc/KycDocumentUploadView$a;->a:Lteam/opay/pay/kyc/KycDocumentUploadView;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/pay/kyc/KycDocumentUploadView$a;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/pay/kyc/KycDocumentUploadView$a;->c:Landroid/content/ContentResolver;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "\u538b\u7f29\u540e\u7684\u56fe\u7247\u5730\u5740->"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/pay/kyc/KycDocumentUploadView$a;->a:Lteam/opay/pay/kyc/KycDocumentUploadView;

    .line 23
    .line 24
    invoke-static {v0, p1}, Lteam/opay/pay/kyc/KycDocumentUploadView;->h(Lteam/opay/pay/kyc/KycDocumentUploadView;Ljava/io/File;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lteam/opay/pay/kyc/KycDocumentUploadView$a;->a:Lteam/opay/pay/kyc/KycDocumentUploadView;

    .line 29
    .line 30
    iget-object v2, p0, Lteam/opay/pay/kyc/KycDocumentUploadView$a;->b:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    iget-object v3, p0, Lteam/opay/pay/kyc/KycDocumentUploadView$a;->c:Landroid/content/ContentResolver;

    .line 33
    .line 34
    invoke-static {v1, v2, v0, v3, p1}, Lteam/opay/pay/kyc/KycDocumentUploadView;->i(Lteam/opay/pay/kyc/KycDocumentUploadView;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "compress error->"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    return-void
.end method
