.class public final Lteam/opay/business/share/ui/DownloadFragment$Companion;
.super Ljava/lang/Object;
.source "DownloadFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/share/ui/DownloadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lteam/opay/business/share/ui/DownloadFragment$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/business/share/PDFInfo;",
        "pdfInfo",
        "Lteam/opay/business/share/ui/DownloadFragment;",
        "a",
        "(Lteam/opay/business/share/PDFInfo;)Lteam/opay/business/share/ui/DownloadFragment;",
        "business-share_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/share/ui/DownloadFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lteam/opay/business/share/PDFInfo;)Lteam/opay/business/share/ui/DownloadFragment;
    .locals 1
    .param p1    # Lteam/opay/business/share/PDFInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/business/share/ui/DownloadFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/share/ui/DownloadFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lteam/opay/business/share/ui/DownloadFragment;->M0(Lteam/opay/business/share/ui/DownloadFragment;Lteam/opay/business/share/PDFInfo;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
