from gene_mining import Parameters, DomainAnalysis


metadata = Parameters(param_domain=['Homeodomain'],
                      param_domain_group=False,
                      param_outdir='wuschel',
                      param_blast_analysis=True,
                      param_blastdb='in.files.blastp.db/Egrandis.faa',
                      param_blast_reference='in.files.blastp.reference/Proteinas_Wus_Caracterizadas.faa',
                      param_pfam_in='in.pfam/Pfam-A.hmm')

DomainAnalysis(metadata).run()