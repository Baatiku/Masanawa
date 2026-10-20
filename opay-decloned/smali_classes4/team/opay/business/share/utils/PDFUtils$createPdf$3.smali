.class final Lteam/opay/business/share/utils/PDFUtils$createPdf$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PDFUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/business/share/utils/PDFUtils;->j(Landroidx/fragment/app/FragmentActivity;Landroid/graphics/Bitmap;Ljava/io/File;IILkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lzr2;",
        "Ljr2<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lzr2;",
        "",
        "<anonymous>",
        "(Lzr2;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Ln33;
    c = "team.opay.business.share.utils.PDFUtils$createPdf$3"
    f = "PDFUtils.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic $block:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $file:Ljava/io/File;

.field final synthetic $pdfAction:I

.field final synthetic $pdfDoc:Landroid/graphics/pdf/PdfDocument;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/graphics/pdf/PdfDocument;Ljava/io/File;ILkotlin/jvm/functions/Function0;Ljr2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Landroid/graphics/pdf/PdfDocument;",
            "Ljava/io/File;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljr2<",
            "-",
            "Lteam/opay/business/share/utils/PDFUtils$createPdf$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$pdfDoc:Landroid/graphics/pdf/PdfDocument;

    .line 4
    .line 5
    iput-object p3, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$file:Ljava/io/File;

    .line 6
    .line 7
    iput p4, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$pdfAction:I

    .line 8
    .line 9
    iput-object p5, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$block:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILjr2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljr2;)Ljr2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljr2<",
            "*>;)",
            "Ljr2<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;

    .line 2
    .line 3
    iget-object v1, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$pdfDoc:Landroid/graphics/pdf/PdfDocument;

    .line 6
    .line 7
    iget-object v3, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$file:Ljava/io/File;

    .line 8
    .line 9
    iget v4, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$pdfAction:I

    .line 10
    .line 11
    iget-object v5, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$block:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/graphics/pdf/PdfDocument;Ljava/io/File;ILkotlin/jvm/functions/Function0;Ljr2;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lzr2;

    check-cast p2, Ljr2;

    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->invoke(Lzr2;Ljr2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lzr2;Ljr2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzr2;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->create(Ljava/lang/Object;Ljr2;)Ljr2;

    move-result-object p1

    check-cast p1, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/d;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lteam/opay/business/share/utils/PDFUtils;->a:Lteam/opay/business/share/utils/PDFUtils;

    .line 12
    .line 13
    iget-object v2, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$activity:Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    iget-object v3, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$pdfDoc:Landroid/graphics/pdf/PdfDocument;

    .line 16
    .line 17
    iget-object v4, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$file:Ljava/io/File;

    .line 18
    .line 19
    iget v5, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$pdfAction:I

    .line 20
    .line 21
    iget-object v6, p0, Lteam/opay/business/share/utils/PDFUtils$createPdf$3;->$block:Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    invoke-static/range {v1 .. v6}, Lteam/opay/business/share/utils/PDFUtils;->h(Lteam/opay/business/share/utils/PDFUtils;Landroid/content/Context;Landroid/graphics/pdf/PdfDocument;Ljava/io/File;ILkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method
