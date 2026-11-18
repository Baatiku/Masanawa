.class public final Lteam/opay/sme/store/reports/ReportEODAdapter$ItemViewHolder;
.super Lteam/opay/core/common/internal/GenericBindingHolder;
.source "ReportEODAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/sme/store/reports/ReportEODAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItemViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/common/internal/GenericBindingHolder<",
        "Lteam/opay/sme/store/api/EODInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lteam/opay/sme/store/reports/ReportEODAdapter$ItemViewHolder;",
        "Lteam/opay/core/common/internal/GenericBindingHolder;",
        "Lteam/opay/sme/store/api/EODInfo;",
        "Lcwd;",
        "binding",
        "<init>",
        "(Lcwd;)V",
        "",
        "position",
        "data",
        "",
        "a",
        "(ILteam/opay/sme/store/api/EODInfo;)V",
        "Lcwd;",
        "getBinding",
        "()Lcwd;",
        "business-sme-store_release"
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
.field public final a:Lcwd;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcwd;)V
    .locals 1
    .param p1    # Lcwd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/core/common/internal/GenericBindingHolder;-><init>(Lxyf;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lteam/opay/sme/store/reports/ReportEODAdapter$ItemViewHolder;->a:Lcwd;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(ILteam/opay/sme/store/api/EODInfo;)V
    .locals 2
    .param p2    # Lteam/opay/sme/store/api/EODInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "data"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/sme/store/reports/ReportEODAdapter$ItemViewHolder;->a:Lcwd;

    .line 7
    .line 8
    iget-object p1, p1, Lcwd;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lteam/opay/sme/store/api/EODInfo;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    move-object v0, v1

    .line 19
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lteam/opay/sme/store/reports/ReportEODAdapter$ItemViewHolder;->a:Lcwd;

    .line 23
    .line 24
    iget-object p1, p1, Lcwd;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-virtual {p2}, Lteam/opay/sme/store/api/EODInfo;->c()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, p2

    .line 34
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
