.class public final Lteam/opay/business/share/ui/PdfCreateFragment;
.super Lteam/opay/core/common/base/BaseFragment;
.source "PdfCreateFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/share/ui/PdfCreateFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000  2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J!\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0003R\u001b\u0010\u0015\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lteam/opay/business/share/ui/PdfCreateFragment;",
        "Lteam/opay/core/common/base/BaseFragment;",
        "<init>",
        "()V",
        "",
        "V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onActivityCreated",
        "(Landroid/os/Bundle;)V",
        "Q",
        "T",
        "Limd;",
        "a",
        "Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;",
        "M",
        "()Limd;",
        "binding",
        "Lteam/opay/business/share/pdf/holder/PdfViewAdapter;",
        "b",
        "Lid8;",
        "N",
        "()Lteam/opay/business/share/pdf/holder/PdfViewAdapter;",
        "mAdapter",
        "Lteam/opay/business/share/PDFInfo;",
        "c",
        "Lteam/opay/business/share/PDFInfo;",
        "pdfInfo",
        "d",
        "Companion",
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


# static fields
.field public static final d:Lteam/opay/business/share/ui/PdfCreateFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final synthetic e:[Lzo7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lzo7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lteam/opay/business/share/PDFInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    .line 2
    .line 3
    const-string v1, "getBinding()Lteam/opay/business/share/databinding/ShareFragmentCreateOpayCardPdfBinding;"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-class v3, Lteam/opay/business/share/ui/PdfCreateFragment;

    .line 7
    .line 8
    const-string v4, "binding"

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->i(Lkotlin/jvm/internal/PropertyReference1;)Lbp7;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Lzo7;

    .line 19
    .line 20
    aput-object v0, v1, v2

    .line 21
    .line 22
    sput-object v1, Lteam/opay/business/share/ui/PdfCreateFragment;->e:[Lzo7;

    .line 23
    .line 24
    new-instance v0, Lteam/opay/business/share/ui/PdfCreateFragment$Companion;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lteam/opay/business/share/ui/PdfCreateFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lteam/opay/business/share/ui/PdfCreateFragment;->d:Lteam/opay/business/share/ui/PdfCreateFragment$Companion;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lteam/opay/business/share/R$layout;->share_fragment_create_opay_card_pdf:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/common/base/BaseFragment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 7
    .line 8
    const-class v1, Limd;

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/business/share/ui/PdfCreateFragment;->a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 14
    .line 15
    new-instance v0, Lslb;

    .line 16
    .line 17
    invoke-direct {v0}, Lslb;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lteam/opay/business/share/ui/PdfCreateFragment;->b:Lid8;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic F()Lteam/opay/business/share/pdf/holder/PdfViewAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/business/share/ui/PdfCreateFragment;->O()Lteam/opay/business/share/pdf/holder/PdfViewAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic G(Lteam/opay/business/share/ui/PdfCreateFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->U(Lteam/opay/business/share/ui/PdfCreateFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lteam/opay/business/share/ui/PdfCreateFragment;Ljava/io/File;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/share/ui/PdfCreateFragment;->S(Lteam/opay/business/share/ui/PdfCreateFragment;Ljava/io/File;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lteam/opay/business/share/ui/PdfCreateFragment;ILteam/opay/business/share/api/Business;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/share/ui/PdfCreateFragment;->W(Lteam/opay/business/share/ui/PdfCreateFragment;ILteam/opay/business/share/api/Business;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lteam/opay/business/share/ui/PdfCreateFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->R(Lteam/opay/business/share/ui/PdfCreateFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lteam/opay/business/share/ui/PdfCreateFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->P(Lteam/opay/business/share/ui/PdfCreateFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic L(Lteam/opay/business/share/ui/PdfCreateFragment;Lteam/opay/business/share/PDFInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/share/ui/PdfCreateFragment;->c:Lteam/opay/business/share/PDFInfo;

    .line 2
    .line 3
    return-void
.end method

.method public static final O()Lteam/opay/business/share/pdf/holder/PdfViewAdapter;
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final P(Lteam/opay/business/share/ui/PdfCreateFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->V()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final R(Lteam/opay/business/share/ui/PdfCreateFragment;)V
    .locals 7

    .line 1
    sget-object v0, Lteam/opay/business/share/pdf/ShareFile;->a:Lteam/opay/business/share/pdf/ShareFile;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lteam/opay/business/share/ui/PdfCreateFragment;->c:Lteam/opay/business/share/PDFInfo;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lteam/opay/business/share/PDFInfo;->getOrderNo()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-nez v2, :cond_1

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    :cond_1
    const/16 v5, 0x8

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v3, "pdf"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v0 .. v6}, Lteam/opay/business/share/pdf/ShareFile;->d(Lteam/opay/business/share/pdf/ShareFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    sget-object v1, Lteam/opay/business/share/utils/PDFUtils;->a:Lteam/opay/business/share/utils/PDFUtils;

    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sget v3, Lteam/opay/business/share/R$string;->share_receipt:I

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, v2, v0, p0}, Lteam/opay/business/share/utils/PDFUtils;->s(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    sget-object v1, Lteam/opay/business/share/utils/PDFUtils;->a:Lteam/opay/business/share/utils/PDFUtils;

    .line 54
    .line 55
    invoke-virtual {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->M()Limd;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v2, v2, Limd;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    .line 61
    const-string v3, "layoutPdf"

    .line 62
    .line 63
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Lwlb;

    .line 67
    .line 68
    invoke-direct {v3, p0, v0}, Lwlb;-><init>(Lteam/opay/business/share/ui/PdfCreateFragment;Ljava/io/File;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x2

    .line 72
    invoke-virtual {v1, v2, v0, p0, v3}, Lteam/opay/business/share/utils/PDFUtils;->i(Landroid/view/View;Ljava/io/File;ILkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method

.method public static final S(Lteam/opay/business/share/ui/PdfCreateFragment;Ljava/io/File;)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/business/share/utils/PDFUtils;->a:Lteam/opay/business/share/utils/PDFUtils;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget v2, Lteam/opay/business/share/R$string;->share_receipt:I

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0, v1, p1, p0}, Lteam/opay/business/share/utils/PDFUtils;->s(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method public static final U(Lteam/opay/business/share/ui/PdfCreateFragment;)V
    .locals 4

    .line 1
    sget-object v0, Lje7;->a:Lje7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->M()Limd;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v2, v2, Limd;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    const-string v3, "layoutPdf"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lje7;->d(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lzmd;->a:Lzmd;

    .line 23
    .line 24
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1, p0, v0}, Lzmd;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final V()V
    .locals 13

    .line 1
    new-instance v6, Lteam/opay/business/share/api/Business;

    .line 2
    .line 3
    sget v0, Lteam/opay/business/share/R$string;->share_pdf:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "customPDF"

    .line 13
    .line 14
    move-object v0, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lteam/opay/business/share/api/Business;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lteam/opay/business/share/api/Business;

    .line 19
    .line 20
    sget v1, Lteam/opay/business/share/R$string;->share_image:I

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    const/4 v11, 0x2

    .line 27
    const/4 v12, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const-string v10, "image"

    .line 30
    .line 31
    move-object v7, v0

    .line 32
    invoke-direct/range {v7 .. v12}, Lteam/opay/business/share/api/Business;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    new-array v1, v1, [Lteam/opay/business/share/api/Business;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    aput-object v6, v1, v2

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    aput-object v0, v1, v2

    .line 43
    .line 44
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lteam/opay/business/share/ui/ShareBottomSortDialog;->t:Lteam/opay/business/share/ui/ShareBottomSortDialog$Companion;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lteam/opay/business/share/ui/ShareBottomSortDialog$Companion;->a(Ljava/util/List;)Lteam/opay/business/share/ui/ShareBottomSortDialog;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Ltlb;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Ltlb;-><init>(Lteam/opay/business/share/ui/PdfCreateFragment;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lteam/opay/business/share/ui/ShareBottomSortDialog;->c0(Lkotlin/jvm/functions/Function2;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0}, Lre6;->p(Landroidx/fragment/app/Fragment;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static final W(Lteam/opay/business/share/ui/PdfCreateFragment;ILteam/opay/business/share/api/Business;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p1, "item"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lteam/opay/business/share/api/Business;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "customPDF"

    .line 11
    .line 12
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->Q()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p2, "image"

    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->T()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Let;->l()Lkotlin/jvm/functions/Function0;

    .line 35
    .line 36
    .line 37
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method


# virtual methods
.method public final M()Limd;
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/share/ui/PdfCreateFragment;->a:Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;

    .line 2
    .line 3
    sget-object v1, Lteam/opay/business/share/ui/PdfCreateFragment;->e:[Lzo7;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget-object v1, v1, v2

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/hi/dhl/binding/viewbind/FragmentViewBinding;->g(Landroidx/fragment/app/Fragment;Lzo7;)Lxyf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Limd;

    .line 13
    .line 14
    return-object v0
.end method

.method public final N()Lteam/opay/business/share/pdf/holder/PdfViewAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/share/ui/PdfCreateFragment;->b:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Q()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseFragment;->getMHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lulb;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lulb;-><init>(Lteam/opay/business/share/ui/PdfCreateFragment;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final T()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/core/common/base/BaseFragment;->getMHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lvlb;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lvlb;-><init>(Lteam/opay/business/share/ui/PdfCreateFragment;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lteam/opay/core/common/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    iget-object p1, p0, Lteam/opay/business/share/ui/PdfCreateFragment;->c:Lteam/opay/business/share/PDFInfo;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/business/share/PDFInfo;->getOrderNo()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    const-string p1, ""

    .line 19
    .line 20
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getAppContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget v0, Lteam/opay/business/share/R$string;->share_no_order_no:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Let;->v(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 44
    .line 45
    .line 46
    :cond_2
    sget-object p1, Ljv2;->a:Ljv2;

    .line 47
    .line 48
    iget-object v0, p0, Lteam/opay/business/share/ui/PdfCreateFragment;->c:Lteam/opay/business/share/PDFInfo;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljv2;->a(Lteam/opay/business/share/PDFInfo;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->N()Lteam/opay/business/share/pdf/holder/PdfViewAdapter;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lteam/opay/business/share/pdf/holder/PdfViewAdapter;->setDataList(Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->M()Limd;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object p1, p1, Limd;->c:Lcom/google/android/material/button/MaterialButton;

    .line 66
    .line 67
    const-string v0, "actionConfirm"

    .line 68
    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lrlb;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lrlb;-><init>(Lteam/opay/business/share/ui/PdfCreateFragment;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v0}, Lde1;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lteam/opay/core/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    invoke-virtual {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->M()Limd;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Limd;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/business/share/ui/PdfCreateFragment;->N()Lteam/opay/business/share/pdf/holder/PdfViewAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
